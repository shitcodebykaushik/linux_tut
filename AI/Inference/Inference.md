# INFERENCE 
- Anference is the execution of a deterministic mathematical function where a trained machine learning model maps a set of input features to an output prediction.While "training" is the process of finding the optimal parameters of a function, "inference" is the evaluation of that function .
- Inference focuses on the throughput and latency .
- A model whose weights are publicly available, like Llama or DeepSeek, and which is usually released under the MIT license, or a similar permissive license .

- Inference is the seconf phase of a generative AI models .
  - `Training` : The procesw of learning model weigth from the data .
  - `Inference` Serving generative Ai model in production .
  - 

- Runtime => This layer is responsible for ensuring an individual model running on a GPU rune performantly and efficinently as possible . This layer dependes on a sophisticate software stat from cuda to pytorch to inferne engines like vLLM SGLang and TensorRT-LLM.
- Infrastructure and Tooling these three layers must work together to create a system that can handle mission critical inference at a scale .
- Inference engineering relies on accelerator: powerful hardware designed to load terabytes of data and perform trillion of operation per seond . 


- `Qunatization` This means the reducing the numberical precision of a model weights it improves the latency both the ttf and the tps increase system throughput and opens up headroom for the other optimizarion . Qunatization is applied at the three levels 
  - Tensor level
  - Channel level 
  - Block level 
- Precisoon : The number of the bitsa used to express a single value in the format for example FP16 uses 16 bits . 

- Generating draft token is not free,it takes both the compute and memoru .
