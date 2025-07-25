## Business Requirements

An Ed-Tech startup is seeking to implement a recommendation system on its web platform to enhance user experience and engagement. By leveraging personalized content suggestions, the goal is to help learners discover relevant courses and other learning resources more efficiently, ultimately improving learning outcomes and platform retention.

The following are the business requirements that were collected after discussions with the stakeholders.

The recommendation system should be designed not only to deliver personalized suggestions but also to support continuous performance monitoring and data-driven evaluation.

> Each time a user engages with a recommended item, these events should be tracked and logged with detailed contextual metadata. This includes whether the user accepted or ignored the recommendation, the nature of the interaction, and any explicit feedback provided. This interaction data should serve a dual purpose. First, it should enable systematic assessment of the recommendation system’s performance. Several performance metrics, such as percentage of recommended items clicked, percentage of users who completed a meaningful action, time spent on recommended item, percentage of sessions where at least one recommendation was interacted with, percentage of products that gets recommended, difference between recommended items, proportion of top recommended items that are relevant, proportion of relevant items that appear in top should be computed to evaluate the effectiveness and relevance of the recommendations delivered to different users. Over time, these metrics will help identify strengths and weaknesses in the recommendation strategy and support iterative model improvements. Second, the collected data should be structured and stored for further analysis. This historical dataset will form the foundation for advanced analytics and predictive modeling. It will be used to uncover behavioral patterns, identify underperforming items, understand content engagement across demographic groups, and reveal market opportunities. 

The recommendation system must ensure a seamless user experience by delivering personalized recommendations in real time with low latency and high responsiveness.
>As users interact with products, perform searches, or navigate the website, the system should dynamically update and present relevant recommendations instantly, adapting in real time to the user behavior as it occurs.

The platform should support multiple types of recommendation systems to serve users effectively across different areas of the website. 

>On the home page, there should be a dedicated "Popular" section showcasing recently popular and trending content. The popularity or "hotness" of a product should be determined by the number of recent user interactions such as views, enrollments, or bookmarks. Ideally, this section should feature approximately 3 to 6 of the most engaging resources, providing a quick snapshot of what's currently popular among the broader user base.
>
>Directly following the "Popular" section, the home page should also include a personalized recommendations section tailored to each user. This section should present a curated list of around 9 to 12 products that the user is likely to find interesting. The recommendations should primarily be driven by the user's recent interaction history and can be further refined by incorporating demographic data like age, gender, or nationality where available and appropriate. This approach ensures that users are shown content that aligns not only with their recent behavior but also with preferences inferred from similar user profiles.
>
>When a user performs a product search on the platform, the recommendation system should enhance the search results by ranking all returned items in descending order of their predicted relevance or "interestingness" to the individual user. Importantly, the system must not exclude any results based on the search query - instead, it should re-rank them to bring the most relevant content to the top. Additionally, users should be given the option to switch the ranking to reflect overall popularity, allowing them to view products based on how frequently they are accessed or rated by other learners on the platform.
>
>On each individual product page, the platform should also display a list of similar products. These recommendations should not be personalized but should rely on objective similarities in product properties, content and user interactions history of product's consumers. This provides users with alternative or complementary products based on the attributes of the product they are currently viewing. It would be ideal to present a list of around 6 to 9 such similar items.

The solution must include strategies to handle new users and new content with minimal or no prior interaction data.

>For users with no prior interaction on the platform, the personalized recommendations should be temporarily replaced by the popularity-based recommendation list which can be further refined by incorporating demographic data, until the user’s first meaningful interaction. Once the user has completed this initial action, the system must switch to delivering personalized content by leveraging user's emerging interaction history.
>
>When a new product is added to the platform, it should be featured in a dedicated "New Arrivals" section. This section serves as a temporary discovery channel for content that has not yet accumulated user interaction data and is therefore not eligible for personalized recommendations. The product remains in the "New Arrivals" section for a predefined period or until a sufficient threshold of user interaction is reached. During this period, the product is exposed to users primarily through this curated section. Once it leaves the "New Arrivals" section, it should have accumulated enough interaction data to be evaluated and integrated into other recommendation systems.

The data powering the recommendation system should be refreshed on a weekly basis.

>The periodic update will allow the system to adapt to shifts in user interests and newly added content. To achieve this, the refreshed dataset should combine historical interaction data with the most recent weekly user activity. This hybrid approach allows the system to retain the depth and personalization learned from long-term behavior while incorporating recent trends and emerging content.
>
>Importantly, historical user profiles and interaction histories must be preserved across these weekly updates. When the recommendation model is refreshed, each user's long-term profile should be re-applied to the updated item landscape, ensuring continuity in personalization and relevance. This guarantees that returning users continue to receive tailored recommendations even as the item catalog and interaction trends evolve over time.

The system must be capable of efficiently serving recommendations to a variable stream of users.

>Given the unpredictable nature of concurrent user activity, the recommendation engine should be designed to automatically scale in response to increased demand and scale down during periods of low activity. This dynamic scalability ensures optimal use of computing resources, reduces operational costs, and enhances the system’s robustness in handling traffic fluctuations. As a result, the system will maintain high availability and performance, even under heavy user load, supporting seamless concurrent browsing across the platform.

## System Requirements

To begin building a solution that addresses the defined business requirements, it is essential to translate those requirements into system requirements — both functional and non-functional. 

The following are the functional requirements that were retrieved from the business requirements.

- All user interactions with the website such as clicks, likes, dislikes, ratings, bookmarks, comments, page views, reading time, and enrollments shall be tracked. Each interaction shall be accompanied by contextual metadata, capturing information such as timestamp, location, device type, session duration, user state, interaction type, whether the item was recommended, and whether the recommendation was accepted or ignored. 

- The homepage shall feature two distinct sections for recommendations. A section showcasing 3 to 6 trending items shall display globally popular content, while a separate section shall present 9 to 12 personalized items based on user-specific data and preferences.

- When users perform product searches, the system shall re-rank the resulting items based on predicted relevance to the individual user. Users shall have the ability to toggle the ranking mode between "personalized" and "overall popularity". The system shall not filter out any search results based on the query itself - all results must be preserved and presented.

- Each product page shall include a "similar items" section displaying 6 to 9 items related to the current product. These similar items are non-personalized and are determined based on product attributes and aggregated user interaction history across the entire user base, not limited to any specific individual.

- Popularity shall be computed using the recent history of user interactions with a product. Similarity between products shall be determined through a combination of product attributes and behavioral patterns observed in users who have interacted with those items.

- The system shall generate personalized recommendations using a combination of the user’s interaction history and, when a user is logged in and not browsing in incognito mode, demographic data such as age, gender, and nationality. 

- The recommendation system shall initially provide popularity-based suggestions for new users without interaction data within the personalized recommendations section. When a user is logged in and not browsing in incognito mode, the system may surface content that is popular among users with similar demographic attributes. Following the user's first meaningful interaction with the platform, the system shall activate personalized recommendations tailored to the individual’s behavior and preferences.

- For newly added items that do not yet have sufficient interaction history, the system shall display them in a dedicated section for a limited duration - typically up to one week or until a predefined threshold of user engagement is met. Once this condition is satisfied, the item will be removed from the "new items" section and treated as a regular product within the platform. While listed in the "new items" section, these items shall not be included in any recommendation algorithms.

- Recommendation datasets shall be refreshed on a weekly basis. Each update shall incorporate both historical data and the most recent weekly user activity. Long-term user profiles must persist across these updates and be reapplied to the evolving item inventory.

- The system shall compute and present key performance metrics to evaluate recommendation effectiveness. These shall include Click-Through Rate (CTR), Conversion Rate, Dwell Time, Engagement Rate, Coverage, Diversity, Precision@K, Recall@K, and Normalized Discounted Cumulative Gain (NDCG@K).

The following are the non-functional requirements that were retrieved from the business requirements.

- The recommendation system must deliver updated recommendations in real time, ensuring low latency and high responsiveness to dynamically reflect changes in user behavior throughout each session. This responsiveness must be maintained without degrading overall system performance.

- The system shall be architected for automatic scalability by expanding resources in response to increased demand and contracting during periods of reduced activity.

- High availability must be ensured, with the system made to be resilient against service interruptions, traffic surges, and potential component failures. The architecture must ensure fault tolerance and uninterrupted service delivery under varying load conditions.

- The system design shall support the integration of multiple recommendation model types, enabling the deployment of diverse algorithms tailored to specific use cases. Moreover, the recommendation engine must be capable of evolving iteratively, allowing for regular updates, refinements, and enhancements to the models.

- All historical interaction and recommendation data must be consistently structured, securely stored, and readily accessible for downstream analytics, reporting, and model training.