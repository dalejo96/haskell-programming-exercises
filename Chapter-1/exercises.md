# Exercises Chapter 1

**Combinators**

Determine if each of the following are combinators or not.

1. 𝜆𝑥.𝑥𝑥𝑥

Yes, it is a combinator, 𝑥 is part of the head and body.

2. 𝜆𝑥𝑦.𝑧𝑥

No, 𝑧 is a free variable.

3. 𝜆𝑥𝑦𝑧.𝑥𝑦(𝑧𝑥)

Yes, it is a combinator.

4. 𝜆𝑥𝑦𝑧.𝑥𝑦(𝑧𝑥𝑦)

Yes, it is a combinator.

5. 𝜆𝑥𝑦.𝑥𝑦(𝑧𝑥𝑦)

No, 𝑧 is a free variable.

**Normal form or diverge?**

Determine if each of the following can be reduced to a normal form or if they diverge.

1. 𝜆𝑥.𝑥𝑥𝑥

This is a normal form.

2. (𝜆𝑧.𝑧𝑧)(𝜆𝑦.𝑦𝑦)

This one diverges because can't be reduced.

3. (𝜆𝑥.𝑥𝑥𝑥)𝑧

This can be reduced so doesn't diverge. Will be 𝑧𝑧𝑧

**Beta reduce**

Evaluate (that is, beta reduce) each of the following expressions to normal form. We strongly recommend writing out the steps on paper with a pencil or pen.

1. _(𝜆𝑎𝑏𝑐.𝑐𝑏𝑎)𝑧𝑧(𝜆𝑤𝑣.𝑤)_

(𝜆𝑏𝑐.𝑐𝑏𝑧)𝑧(𝜆𝑤𝑣.𝑤)

(𝜆𝑏𝑐.𝑐𝑏𝑧)𝑧(𝜆𝑤𝑣.𝑤)

(𝜆𝑐.𝑐𝑧𝑧)(𝜆𝑤𝜆𝑣.𝑤)

(𝜆𝑤𝜆𝑣.𝑤)𝑧𝑧

(𝜆𝑣.𝑧)𝑧

𝑧

2. _(𝜆𝑥.𝜆𝑦.𝑥𝑦𝑦)(𝜆𝑎.𝑎)𝑏_

(𝜆𝑦.(𝜆𝑎.𝑎)𝑦𝑦)𝑏

(𝜆𝑎.𝑎)𝑏𝑏

(𝜆𝑎.𝑎)𝑏𝑏

𝑏𝑏

3. _(𝜆𝑦.𝑦)(𝜆𝑥.𝑥𝑥)(𝜆𝑧.𝑧𝑞)_

(𝜆𝑥.𝑥𝑥)

(𝜆𝑧.𝑧𝑞)(𝜆𝑧.𝑧𝑞)

((𝜆𝑧.𝑧𝑞)𝑞)

((𝜆𝑧.𝑧𝑞)𝑞)

𝑞𝑞

4. _(𝜆𝑧.𝑧)(𝜆𝑧.𝑧𝑧)(𝜆𝑧.𝑧𝑦)_

(𝜆𝑧.𝑧𝑧)(𝜆𝑧.𝑧𝑦)

(𝜆𝑧.𝑧𝑦)(𝜆𝑧.𝑧𝑦)

((𝜆𝑧.𝑧𝑦)𝑦)

𝑦𝑦



5. _(𝜆𝑥.𝜆𝑦.𝑥𝑦𝑦)(𝜆𝑦.𝑦)𝑦_

(𝜆𝑦.(𝜆𝑦.𝑦)𝑦𝑦)𝑦

(𝜆𝑦.𝑦)𝑦𝑦

(𝑦)𝑦

𝑦𝑦

6. _(𝜆𝑎.𝑎𝑎)(𝜆𝑏.𝑏𝑎)𝑐_

((𝜆𝑏.𝑏𝑎)(𝜆𝑏.𝑏𝑎))𝑐

((𝜆𝑏.𝑏𝑎)𝑎)𝑐

(𝑎𝑎)𝑐

𝑎𝑎𝑐

7. _(𝜆𝑥𝑦𝑧.𝑥𝑧(𝑦𝑧))(𝜆𝑥.𝑧)(𝜆𝑥.𝑎)_

(𝜆𝑦𝜆𝑧.(𝜆𝑥.𝑧)𝑧(𝑦𝑧))(𝜆𝑥.𝑎)

𝜆𝑧'.(𝜆𝑥.𝑧)𝑧'((𝜆𝑥.𝑎)𝑧

𝜆𝑧'.𝑧 (𝜆𝑥.𝑎)𝑧

𝜆𝑧'.𝑧𝑎

