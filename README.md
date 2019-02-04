# Example GraphQL
For the sake of the purpose the schema is quite minimalistic. E.g. User model has single attribute - id.
There are some seed data (seeds.rb) in order to start playing. No authentication is implemented but there is
current_user hardcoded in graphql_controller.rb.

## Docker
Minimalistic docker-compose is implemented for convenience. Please, keep in mind that there is no gems or data
persistence set, so if you do
```bash
$ docker-compose down
```  
you will lose the database and will need to recreate it.

### Sartup the project

```bash
git clone PROJECT
```

```bash
cd PROJECT
```

```bash
docker-compose build
```

```bash
docker-compose run app rails db:setup
```

```bash
docker-compose up
```

Open GraphiQL via http://localhost:3000/graphiql 

## Example queries
```graphql
query {
  users {
    id
    posts {
      id
      comments {
        id
        message
        user {
          id
        }
        likes {
          id
        }
      }
    }
  }
}
```  

```graphql
mutation createComment($postId: Int!, $message: String!) {
  createComment(postId: $postId, message: $message) {
    comment {
      id
      message
      user {
        id
      }
    }
    errors 
  }
}

with query variables
{
  "postId": 1,
  "message": "Test comment 1"
}
```

```graphql
mutation likeComment($commentId: Int!) {
  likeComment(commentId: $commentId) {
    comment {
      id
      message
      user {
        id
      }
      likes {
        id
      }
    }
    errors 
  }
}

with query variables
{
  "commentId": 1
}

```
