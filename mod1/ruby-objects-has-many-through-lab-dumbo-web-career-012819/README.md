# Ruby Object Relations: Has-Many-Through Lab

## Objectives

1.  Write classes that are related to each other via the "has-many-through"
    relationship.
2.  Write methods that use the "has-many-through" relationship to deliver
    information on related objects.

## Overview

In this lab, we'll be dealing with two sets of three classes.

We have a `Song`, `Artist` and `Genre` class. Songs belong to an artist and
belong to a genre. A genre has many songs and an artist has many songs. An
artist has many genres through its songs and a genre has many artists through
its songs.

We also have an `Appointment`, `Doctor` and `Patient` class. `Appointment`s belong
to a `Patient` and a `Doctor`. A `Doctor` has many `Appointment`s and a `Patient` has
many `Appointment`s. A `Doctor` has many `Patient`s through its `Appointment`s and a
`Patient` has many `Doctor`s through its `Appointment`s.

## Instructions

Start with the `Artist`/`Song`/`Genre` domain.

**The `Artist` model:**

- The `Artist` class needs a class variable `@@all` that begins as an empty array
- The `Artist` class needs a class method `.all` that lists each artist in the
  class variable
- An artist is initialized with a name and is saved in the `@@all` array.
- The `Artist` class needs an instance method, `#new_song`, that takes in an
  argument of a name and genre creates a new song. That song should know that it
  belongs to the artist.
- The `Artist` class needs an instance method, `#songs`, that iterates through all
  songs and finds the songs that belong to that artist. Try using `select` to
  achieve this.
- The `Artist` class needs an instance method, `#genres` that iterates over that
  artist's songs and collects the genre of each song.

**The `Song` model:**

- The `Song` class needs a class variable `@@all` that begins as an empty array.
- The `Song` class needs a class method `.all` that lists each song in the class
  variable.
- A song should be initialized with a name, an artist, and a genre, and be saved
  in the `@@all` array.

**The `Genre` model:**

- The `Genre` class needs a class variable `@@all` that begins as an empty array.
- The `Genre` class needs a class method `.all` that lists each genre in the class
  variable.
- A genre should be initialized with a name and be saved in the `@@all` array.
- The `Genre` class needs an instance method, `#songs`, that iterates through all
  songs and finds the songs that belong to that genre.
- The `Genre` class needs an instance method, `#artists`, that iterates over the
  genre's collection of songs and collects the artist that owns each song.

Now let's move on to our `Doctor`/`Appointment`/`Patient` domain model.

**The `Doctor` model:**

- The `Doctor` class needs a class variable `@@all` that begins as an empty array.
- The `Doctor` class needs a class method `.all` that lists each doctor in the
  class variable.
- A doctor should be initialized with a name and be saved in the `@@all` array.
- The `Doctor` class needs an instance method, `#new_appointment`, that takes in a
  an instance of the `Patient` class and a date, and creates a new `Appointment`. That
  `Appointment` should know that it belongs to the doctor
- The `Doctor` class needs an instance method, `#appointments`, that iterates
  through all `Appointment`s and finds those belonging to this doctor.
- The `Doctor` class needs an instance method, `#patients`, that iterates over
  that doctor's `Appointment`s and collects the patient that belongs to each
  `Appointment`s.

**The `Appointment` model:**

- The `Appointment` class needs a class variable `@@all` that begins as an empty array.
- The `Appointment` class needs a class method `.all` that lists each `Appointment`
  in the class variable.
- An `Appointment` should be initialized with a date (as a string, like `"Monday, August 1st"`), a patient, and a doctor. The `Appointment` should be saved in the
  `@@all` array.

**The `Patient` model:**

- The `Patient` class needs a class variable `@@all` that begins as an empty array.
- The `Patient` class needs a class method `.all` that lists each patient in the
  class variable.
- A patient is instantiated with a name and be saved in the `@@all` array.
- The `Patient` class needs an instance method, `#new_appointment`, that takes in
  an argument of a doctor and a date and creates a new `Appointment`. The
  `Appointment` should know that it belongs to the patient.
- The `Patient` class needs an instance method, `#appointments`, that iterates
  through the `Appointment`s array and returns `Appointment`s that belong to the
  patient.
- The `Patient` class needs an instance method, `#doctors`, that iterates over
  that patient's `Appointment`s and collects the doctor that belongs to each
  `Appointment`.

<p class='util--hide'>View <a href='https://learn.co/lessons/ruby-objects-has-many-through-lab'>Has Many Objects Through Lab</a> on Learn.co and start learning to code for free.</p>

