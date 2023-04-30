<%@page import="com.bean.qustion"%>
<%@page import="com.bean.student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<script>
function startTimer(duration, display) {
    var timer = duration, minutes, seconds;
    setInterval(function () {
        minutes = parseInt(timer / 60, 10);
        seconds = parseInt(timer % 60, 10);

        minutes = minutes < 10 ? "0" + minutes : minutes;
        seconds = seconds < 10 ? "0" + seconds : seconds;

        display.textContent = minutes + ":" + seconds;

        if (--timer < 0) {
            timer = duration;
        }
    }, 1000);
}

window.onload = function () {
    var tenMinutes = 60 * 10,
        display = document.querySelector('#time');
    startTimer(tenMinutes, display);
};
</script>
 <style>
    /* Global styles */
    body {
      font-family: Arial, sans-serif;
      background-color: #f5f5f5;
      margin: 0;
      padding: 0;
    }

    .container {
      max-width: 800px;
      margin: 0 auto;
      padding: 20px;
      background-color: #fff;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
    }
   
    #time{
     text-align: right;
     font-size: 40px;
    }
    h1 {
      text-align: center;
      margin-top: 0;
    }
   
    .counter{
      text-align: right;
      font-size: 40px;
    }
    form ol {
      counter-reset: question-counter;
      list-style: none;
      margin: 0;
      padding: 0;
    }

    form li {
      counter-increment: question-counter;
      margin-bottom: 20px;
    }

    form h2::before {
      content: counter(question-counter) ". ";
    }

    form p {
      margin-top: 0;
    }

    form div {
      margin-top: 10px;
    }

    form label {
      margin-left: 5px;
    }

    form button[type="submit"] {
      background-color: #4CAF50;
      color: white;
      padding: 10px 20px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      font-size: 16px;
    }

    form button[type="submit"]:hover {
      background-color: #3e8e41;
    }

    #result-container {
      text-align: center;
      margin-top: 20px;
    }
   
  </style>
</head>
<body>

 <div class="container">
    <header>
        <h1>Continuous Evaluation - 1</h1>
        <hr>
        <p><b>=></b>This is a multiple-choice quiz. Please select the correct answer for each question.<span> (Marks:30)</span></p>
        <div>Time Remaining: <span id="time">10:00</span> minutes</div>
      </header>
      <a href="updatepage.jsp" style="float: right; font-size: 30px">Update</a>
      <a href="logout.jsp" style="float: right; font-size: 20px">Logout</a>
      
    <form id="question-form" name="qform" onsubmit=getScore(event)>
      
      <ol>
      
        <li>
            <p><b>1.</b>Which of the following is not a Java features?</p>
            <div>
              <input type="radio" id="q1a" name="q1" value="a">
              <label for="q1a">A. Dynamic</label>
            </div>
            <div>
              <input type="radio" id="q1b" name="q1" value="b">
              <label for="q1b">B. Architecture Neutral</label>
            </div>
            <div>
              <input type="radio" id="q1c" name="q1" value="c">
              <label for="q1c">C. Use of pointers</label>
            </div>
            <div>
              <input type="radio" id="q1d" name="q1" value="d">
              <label for="q1d">D. Object-oriented</label>
            </div>
          </li>
        
          <li>
            <p><b>2.</b>The \u0021 article referred to as a</p>
            <div>
              <input type="radio" id="q1a" name="q2" value="a">
              <label for="q1a">A. Unicode escape sequence</label>
            </div>
            <div>
              <input type="radio" id="q1b" name="q2" value="b">
              <label for="q1b">B. Octal escape</label>
            </div>
            <div>
              <input type="radio" id="q1c" name="q2" value="c">
              <label for="q1c">C. Hexadecimal</label>
            </div>
            <div>
              <input type="radio" id="q1d" name="q2" value="d">
              <label for="q1d">D. Line feed</label>
            </div>
          </li>
        
          
          <li>
            <p><b>3.</b> _____ is used to find and fix bugs in the Java programs.</p>
            <div>
              <input type="radio" id="q1a" name="q3" value="a">
              <label for="q1a">A. JVM</label>
            </div>
            <div>
              <input type="radio" id="q1b" name="q3" value="b">
              <label for="q1b">B. JRE</label>
            </div>
            <div>
              <input type="radio" id="q1c" name="q3" value="c">
              <label for="q1c">C. JDK</label>
            </div>
            <div>
              <input type="radio" id="q1d" name="q3" value="d">
              <label for="q1d">D. JDB</label>
            </div>
          </li>
        
          
          <li>
            <p><b>4.</b>What is the return type of the hashCode() method in the Object class</p>
            <div>
              <input type="radio" id="q1a" name="q4" value="a">
              <label for="q1a">A. Object</label>
            </div>
            <div>
              <input type="radio" id="q1b" name="q4" value="b">
              <label for="q1b">B. int</label>
            </div>
            <div>
              <input type="radio" id="q1c" name="q4" value="c">
              <label for="q1c">C. long</label>
            </div>
            <div>
              <input type="radio" id="q1d" name="q4" value="d">
              <label for="q1d">D. void</label>
            </div>
          </li>
        
          
          <li>
            <p><b>5.</b> What does the expression float a = 35 / 0 return</p>
            <div>
              <input type="radio" id="q1a" name="q5" value="a">
              <label for="q1a">A. 0</label>
            </div>
            <div>
              <input type="radio" id="q1b" name="q5" value="b">
              <label for="q1b">B. Not a Numberme</label>
            </div>
            <div>
              <input type="radio" id="q1c" name="q5" value="c">
              <label for="q1c">C. Infinity</label>
            </div>
            <div>
              <input type="radio" id="q1d" name="q5" value="d">
              <label for="q1d">D. Run time exception</label>
            </div>
          </li>
        
          
          <li>
            <p><b>6.</b>Which of the following creates a List of 3 visible items and multiple selections abled?</p>
            <div>
              <input type="radio" id="q1a" name="q6" value="a">
              <label for="q1a">A. new List(false, 3)</label>
            </div>
            <div>
              <input type="radio" id="q1b" name="q6" value="b">
              <label for="q1b">B. new List(3, true)</label>
            </div>
            <div>
              <input type="radio" id="q1c" name="q6" value="c">
              <label for="q1c">C. new List(true, 3)</label>
            </div>
            <div>
              <input type="radio" id="q1d" name="q6" value="d">
              <label for="q1d">D. new List(3, false)</label>
            </div>
          </li>
        
          
          <li>
            <p><b>7.</b>In which process, a local variable has the same name as one of the instance variables?</p>
            <div>
              <input type="radio" id="q1a" name="q7" value="a">
              <label for="q1a">A. Serialization</label>
            </div>
            <div>
              <input type="radio" id="q1b" name="q7" value="b">
              <label for="q1b">B. Variable Shadowing</label>
            </div>
            <div>
              <input type="radio" id="q1c" name="q7" value="c">
              <label for="q1c">C. Abstraction</label>
            </div>
            <div>
              <input type="radio" id="q1d" name="q7" value="d">
              <label for="q1d">D. Multi-threading</label>
            </div>
          </li>
        
          
          <li>
            <p><b>8.</b>Which of the following is true about the anonymous inner class?</p>
            <div>
              <input type="radio" id="q1a" name="q8" value="a">
              <label for="q1a">A. It has only methods</label>
            </div>
            <div>
              <input type="radio" id="q1b" name="q8" value="b">
              <label for="q1b">B. Objects can't be created</label>
            </div>
            <div>
              <input type="radio" id="q1c" name="q8" value="c">
              <label for="q1c">C. It has a fixed class name</label>
            </div>
            <div>
              <input type="radio" id="q1d" name="q8" value="d">
              <label for="q1d">D. It has no class name</label>
            </div>
          </li>
        
          
          <li>
            <p><b>9.</b>Which package contains the Random class?</p>
            <div>
              <input type="radio" id="q1a" name="q9" value="a">
              <label for="q1a">A. java.util package
</label>
            </div>
            <div>
              <input type="radio" id="q1b" name="q9" value="b">
              <label for="q1b">B. java.lang package
</label>
            </div>
            <div>
              <input type="radio" id="q1c" name="q9" value="c">
              <label for="q1c">C. java.awt package
</label>
            </div>
            <div>
              <input type="radio" id="q1d" name="q9" value="d">
              <label for="q1d">D. java.io package</label>
            </div>
          </li>
        
          
          <li>
            <p><b>10.</b>An interface with no fields or methods is known as a ______.</p>
            <div>
              <input type="radio" id="q1a" name="q10" value="a">
              <label for="q1a">A. Runnable Interface
			</label>
            </div>
            <div>
              <input type="radio" id="q1b" name="q10" value="b">
              <label for="q1b">B. Marker Interface
			</label>
            </div>
            <div>
              <input type="radio" id="q1c" name="q10" value="c">
              <label for="q1c">C. Abstract Interface
			</label>
            </div>
            <div>
              <input type="radio" id="q1d" name="q10" value="d">
              <label for="q1d">D. CharSequence Interface
			</label>
            </div>
          </li>
        
        
        </ol><center><button name="action" value="submit" type="submit" >Submit</button></center>

    </form>
  </div>
  <div id="score">
  </div>
  <div id="result-container"></div>
  <script>
  console.log("Calling the Score function")
  console.log(document.querySelector("#question-form"))
  document.getElementById("question-form").addEventListener('submit', getScore);
 
function getScore(event) {    
  
console.log("Calling getScore")
  event.preventDefault();
	const form = document.getElementById("question-form");

const resultContainer = document.querySelector('#result-container');

// Define correct answers for each question
const correctAnswers = {
  q1: 'c',
  q2: 'a',
  q3: 'b',
  q4: 'b',
  q5: 'c',
  q6: 'b',
  q7: 'b',
  q8: 'd',
  q9: 'a',
  q10: 'b'
  
  // Add more questions and answers as needed
};

console.log("calculating Score")
let score = 0;
//console.log(document.qform)
  for (let i = 1; i <= 10; i++) {
	 
	 const qid = 'q' + i;
	 console.log(qid)
	 //const question = document.querySelector("input[type='radio'][name=qid]:checked");
	const question = document.qform[qid];
	 console.log(question)
	
	 if (question) {
		 console.log("inside question")
 //     const questionId = `q${i}`;
	 console.log(correctAnswers['q10'])
	 console.log(question.value)
      if (question.value == correctAnswers[qid]) {
        console.log("incrementing score")
    	score++;
        console.log(score)
      }
  }
 console.log(score)
  resultContainer.innerHTML = '<p>You scored ' +" " +  score + " " + ' out of 20.</p>';
};
}
	</script>
</body>
</html>
