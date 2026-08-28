# Hyper

An open-source web application for learning.

The project started from my own notes and experience preparing for the Unified National Testing (UNT) in Kazakhstan (similar to SAT Subject Test in Physics, which was discontinued in 2021, with some overlap with AP Physics). The project is not tied to any particular exam, however.

The initial curriculum is roughly comparable in scope to high-school physics courses, while keeping the platform useful for general physics education.

## Features

* Learning roadmaps organized by topic and difficulty
<!-- * Physics notes and explanations -->
<!-- * Interactive 2D simulations -->
<!-- * Physics problems and exercises -->
* Anki-style flashcards and spaced repetition
* Progress tracking
* Study streaks
* Multiple curricula and topic collections

The roadmap is inspired by resources such as [NeetCode](https://neetcode.io/): topics are organized in a sensible learning order, with progress tracked as you work through them.

<!-- ## Simulations -->
<!---->
<!-- Interactive simulations are written in Rust using [Bevy](https://bevyengine.org/) and compiled to WebAssembly. -->
<!---->
<!-- Simulations are intended to accompany the material rather than replace it. A lesson about projectile motion, for example, can include a simulation where velocity, angle, gravity, and other parameters can be changed while observing the result. -->

## Technology

* Rust
* Actix Web
* Server-side rendered HTML
* Templates
<!-- * Bevy -->
<!-- * WebAssembly -->
* SQLite / PostgreSQL
* JavaScript only where necessary

The application is primarily server-rendered. Interactive simulations are isolated as WebAssembly components.

## Open Source

The project is open source. The application, simulations, and educational content should remain usable and modifiable by others.

## Status

Early development.

## Copyright

Copyright (c) the respective contributors, as shown by the AUTHORS file.

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as published
by the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
