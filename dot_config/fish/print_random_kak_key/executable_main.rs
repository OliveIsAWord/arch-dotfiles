#!/usr/bin/env rust-script
//! ```cargo
//! [dependencies]
//! chrono = "0.4.41"
//! rand = "0.9.1"
//! ```

use chrono::prelude::*;
use rand::prelude::*;

fn main() {
    let src = include_str!("keys.asciidoc");
    let time = Local::now();
    let formatted_time = time.format("%a %Y %b %m");
    let seed = time.day() + time.month() * 100 + time.year() as u32 * 10_000;
    let mut rng = rand::rngs::SmallRng::seed_from_u64(seed as u64);
    let key = src
        .split("\n\n")
        .filter(|paragraph| paragraph.starts_with('*'))
        .choose(&mut rng)
        .unwrap();
    let line = src
        .lines()
        .position(|line| line.starts_with(key.lines().next().unwrap()))
        .unwrap()
        + 1;
    println!("Daily Kakoune key for {formatted_time}:\n{key}\nLearn more by running `kako {line}`");
}
