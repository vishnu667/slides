---
marp: true
theme: gaia
style: |
  header img {
  float:right
  }
  img { 
    background-color: transparent;
  }
  div.mermaid {
    display:flex;
    height: 100%;
  }
  div.mer_center {
    width:50%;
    margin:auto;
  }
  div.colwrap {
    color: inherit;
    width: 100%;
    height: 100%;
  }

  div.colwrap div.left, div.colwrap div.right {
    position: absolute;
    top: 10%;
    bottom: 0;
    padding: 5% 1% 8% 1%;
  }
  div.colwrap div.left {
    right: 50%;
    left: 0;
  }
  div.colwrap div.right {
    left: 50%;
    right: 0;
  }
paginate: true
---

<br/><br/><br/><br/>

# Test Driven Development

* by **Vishnu Prasad** from ThoughtSpot

<style scoped>ul {list-style: none; }</style>

---
<br/><br/><br/><br/>

Have you heard about TDD ?

---
<br/><br/><br/><br/>

Test-driven development (TDD) is a software development process

That involves **writing tests before writing code**

---

<br/><br/><br/><br/>

The Problem:

<!-- Most Developers don't stay in a project long enough that they have found mistakes in what they did.-->

---

<br/><br/><br/>

Resistance to TDD
* Not the right way to develop code.
* Hoping their light bulb would go off.
* Some good developers don't want to write tests.
  * Why ? They are not idiots.

<!-- Notes: Junior dev's need tdd. Experienced dev's don't need it.-->
---
<br/><br/><br/>

We often write more test code than implementation code.


<!-- Product don't like us writing tests. -->
---

<br/><br/><br/>

Why were we slower ?

<!-- Writing the tests -->
<!-- Refactoring : When we change existing code we have a lot of breaking tests -->
<!-- Test with lot of mocks -->
---

<br/><br/><br/>

The Promise ?

<!-- We should be able to refactor our code keep it clean. And it does not have to rot.  -->
<!-- Our tests will enable us to refactor -->
<!-- Refactoring keeps the code healthy -->
<!-- The tests became our obstacles. -->
---
<br/><br/><br/>

That does not sound right ?

<!-- Surely what Martin Fowler and kent were telling us about refactoring was that refactoring was changing the implementation details without breaking tests-->

<!-- 2009-2010: Papers and book talking about Don't do Test Driven development. -->
---
<br/><br/><br/>

Why do approaches like "Programmer Anarchy", "Spike and Stabilize",  even "Lean Software Development"

wants to drop test first.

<!-- Startups going the Ship code faster let it break and we'll fix it even faster -->

---
<br/><br/><br/>

Why is the `Duct tape Programmer` winning ?

<!-- What is duct tape programmer -->
<!-- Product likes Bob -->
<!-- Bob ships code -->
<!-- Others have to maintain Bob's code -->

---
<br/><br/><br/>

When we return to our tests. - because they are broken it is often difficult to understand their intent. 

<br/>

* Is the test broken because the behavior has changed?
Where is that behavior expressed ?

<!-- What is actually under test ? -->
<!-- Only the mock is being tested ? -->
<!-- Should we just delete them -->

---

<br/><br/><br/>

We have large ATDD suites written in Fit or Gherkin

<br/>

* They spend much of their life Red
* Developers start ignoring red results.
* Blame someone else for the pipeline going red.

<!-- ATDD : Acceptance Test-Driven Development -->
<!-- cucumber etc -->
<!-- They are slow, Interruptions -->
<!-- Dev's hate it and never check them -->

---

<br/><br/><br/>

Is TDD Dead ? `Martin Fowler`

<br/>
A series of conversations between Kent Beck, David Heinemeier Hansson, and myself on the topic of Test-Driven Development (TDD) and its impact upon software design.

<!--  -->

---

<br/><br/>

Let's revisit the origins of our hero 
#### **TDD Rebooted?**

---
<br/><br/>

![bg contain](assets/TDD_kent_beck_cover.png)
<!-- More people preach tdd than ones who have read the book -->
<!--  It covers more than just the basics with  topics on patterns, smells, mocks etc. -->
---
Avoid testing implementation details, test behaviors

* Adding a new class is not the trigger for writing tests.
  * The trigger is implementing a requirement.
  * A test-case per class approach fails to capture the ethos for TDD.
* Test outside-in, writing tests to cover then use cases public facing interfaces.
* Only writing tests to cover the implementation details when you need to better understand the refactoring of the simple implementation we start with.

---

* Do not write tests for implementation details - these change!
* Write tests only against the stable contract of the API
* The key is the refactoring step.
<!--  Refactoring is the goal -->
---

When we write a test, we imagine the perfect interface for our operation. We are `telling ourselves a story about how the operation will look from the outside.` Our story won't always come true, but it's better to `start from the best-possible application program interface (API)` and work backward than to make things complicated, ugly, and “realistic” from the get-go.

###### Dan North Agile expert and Organizer BDD


<!--Objective of TDD : What should this look like and how it should work? -->
---
What is a Unit Test ?

* For Kent Beck it is a test that ‘runs in isolation’  from other tests
  * Nothing more, nothing less
  * It is NOT to be confused with the classical unit test definition of targeting a module
  * We don’t touch file system, database, because these ‘shared fixture’ elements prevent us running in isolation from other tests.
<!-- If no shared Fixture problem its totally fine to talk to a database etc. -->
---
What is a Unit Test ?

* Explicitly writing tests that target a method on a class, is not a TDD unit test
  * TDD unit tests focus on a story 
    * Use-case, scenario…pick your poison!

---
What is a Unit Test ?

* In fact focusing on methods creates tests that are hard to maintain
  * We don’t capture the behavior we want to preserve 

<!-- But touching is fine in a developer test - with the shared fixture and slow constraint -->
---


Writing Sinful code
## Red-Green-refactor

---
Red-Green-refactor

* Red Write a little test that doesn't work, and perhaps doesn't even compile at first.
* Green Make the test work quickly, committing whatever sins necessary in the process.
* Refactor Eliminate all of the duplication created in merely getting the test to work.

<!-- Green Be a duct tape programmer -->
---

Red-Green-refactor

* Write a test.
* Make it compile.
* Run it to see that it fails.
* Make it run.
* Remove duplication.

---
Red-Green-refactor

* Make it run. Quickly getting that bar to go to green dominates everything else. 
* This shift in aesthetics is hard for some experienced software engineers. 
  * They only know how to follow the rules of good engineering. 
  * Quick green excuses all sins. 
  * This is not just about accepting sin, its about being sinful
  * Write sinful code!

<!--  Speed trumps design, just for that brief moment  -->
---

Kent's point is you can't do two things properly at once easily.
* You can't understand the solution to the problem.
* And engineer the code right.
* One of two things will go wrong
  * Over engineer your solution beyond what the test requires
  * Or you'll get into analysis paralysis.

<!--  First thing we do is solve the problem with some code   -->
---
<br/><br/><br/><br/>
How soon is Now ?
## Clean code when

<!--  We don't want duct programming code all along  -->
---
Clean code Now

* The Refactoring Step is when we produce clean code.
  * It’s when you apply patterns (see Joshua Kerievsky Refactoring to Patterns).
  * It’s when you remove duplication
  * It’s when you sanitize the code smells

---
Clean code Now

* You do not write new unit tests here
  * You are not introducing public classes
  * It is likely if you feel the need, you need collaborators that fulfill a role.

---
Clean code When

* “Dependency is the key problem in software development at all scales.“ - Kent Beck, TDD By Example
* We need to eliminate dependency between our tests and our code.
* Tests should not depend on details, because  then changing implementation breaks tests. Tests should depend on contracts or public interfaces.
* This allows us to refactor implementations without changing tests
* Don’t bake implementation details into tests!
* Test behaviors not implementations.

---
Clean code When

* Don’t test internals.
* Don’t make everything public in order to test it
* Preserve implementation hiding by keeping a thin public API
* Refactor implementation details out, so that they do not need their own tests
* Continue to refactor implementation details over time, as you want
* Have expressive tests that tell you can read in the future 

---
<br/><br/><br/><br/>

Removing Shared fixture
## MOCKS


---
Mock Object:

* Classic example is database
  * Long time to start
  * Difficult to keep ‘clean’
  * Tie tests to physical location on network
  * Write tests against something that acts like Db

---
Mock Object:

* Mocks can improve readability by making contents of read rows explicit (evident data)
* Mocks hinder the use of singletons 
  * Which may be a good thing
* Mocks make us consider issues around coupling
  * We learn to inject dependencies
* Mocks risk that the real system will not perform in the correct way

---

<br/><br/><br/><br/>

In case you slept through it
#### **Summary**
---

In case you slept through it

. The reason to test is a new behavior, not a method on a class
. Write dirty code to get green, then refactor
. No new tests for refactored internals and privates (methods, classes)
. Both Develop and Accept against tests written on a port
. Add Integration tests for coverage of ports to adapters
. Add system tests for end-to-end confidence
. Don’t mock internals, privates, or adapters

---
<br/><br/><br/><br/>

#### **Questions?**
---
<br/><br/><br/><br/>

#### **Thank you**

<script type="module">
import mermaid from 'https://cdn.jsdelivr.net/npm/mermaid@10/dist/mermaid.esm.min.mjs';
mermaid.initialize({ startOnLoad: true });
window.addEventListener('vscode.markdown.updateContent', function() { mermaid.init() });
</script>