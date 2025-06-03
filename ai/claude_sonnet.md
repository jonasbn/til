# Claude Sonnet

I heard an interview with: Salvatore Sanfilippo (Antirez) of Redis fame on the Changelog podcast.

He had some very interesting things to say about Claude Sonnet compared to other GenAI models.

My experience with Claude Sonnet a a very positive one. I was attempting to get GitHub copilot to generate some complex SQL
and it simply did not work out, I believe the model used was the default of GPT.

After a change copilot provided a working version.

From the interview here are some of my takeaways:

> [00:56:22.03] I believe this is going to be useful in the future, even if I am not a fan of rug, because I believe that RAG created a lot of issues. For example, one of the reasons I believe Claude Sonnet is often in the real world so strong for programmers is that when you attach a file there, the model sees all the file. They don’t use RAG. Instead, when you attach a file in the Open AI systems, it uses RAG. So you don’t see it, but the model is just seeing fragments of the code. So in some way, Claude looks magical because of that.
>
>
> [00:59:44.05] Basically, what is happening right now is that all the frontier models are MOE, mixture of experts. They are no longer like, for example, LLaMA 3.3 or the initial models, dense models. Starting with GPT-4, Open AI started with the idea of using a mixture of experts. Basically, the model is partitioned inside, like a cluster, and then there is a layer, which is the routing layer, which selects at each layer, for each token, which part of the model to activate. In this way, a subset of the model becomes expert in the English grammar, another subset in Python, and so forth. However, this division is not so clear. The model learns how to split the knowledge, and it’s very mixed [unintelligible 01:00:41.26] inside.
>
> So basically, with MOEs you still need the VRAM to contain all the model in your RAM. So for example, if you have – let’s talk about DeepSeek version three, which is more or less as big as Claude, and we have the actual data public for DeepSeek. It’s a 600 billion parameters model.
>
>
> Yeah, yeah. In general, if you want to retrieve anything – for example, another example that… For your use cases particularly, one of those systems that have a very large context window, like Claude Sonnet, and that don’t use RAG and see all the files in the context could be the best spot for you. If you want to try, you can take some document, put all the information needed, and then you do few-shot learning. So you make examples. Okay? And then if you upload this file to Claude and you ask a question, it should be able to reply in a perfect way.
>
>
> [01:15:43.16] And Claude unfortunately cannot run Python, but it writes JavaScript and executes it inside your window of your browser, and then takes the calculation back.
>
>
> So it can remove, edit, change parts… And also, between Claude 3.5 and 3.7, the generation output length was increased like 10 times. So now it can generate like 1,000 lines of code in one shot or even more, which is pretty impressive.
>

## Resources and References

- [Changelog podcast episode: #631](https://changelog.com/podcast/631)
