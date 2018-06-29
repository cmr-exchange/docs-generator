# docs-generator

## Build

For the first time:

1. Create the required docker images: `make images`
1. Generate the docs: `make`

Subsequent builds need only run `make`.

## Running a Server

Just do `make run`.

## Developer Notes

### Code scaffolding

Run `ng generate component component-name` to generate a new component. You can also use `ng generate directive/pipe/service/class/module`.

### Swagger Extensions

To provide a rich documentation experience, we leverage swagger extensions.

#### Documentation Top Matter

This is the copy that is presented first.

```
  x-top-matter:
    - title: Introduction
      level: 1
      content: |
        Lorem ipsum dolor sit amet, consectetur adipisicing elit.
        Quaerat cupiditate odio nihil tempore, autem ipsam animi voluptate quia deleniti neque amet blanditiis deserunt itaque laudantium voluptas consequatur dolore officiis nulla.

        Lorem ipsum dolor sit amet, consectetur adipisicing elit.
        Quaerat cupiditate odio nihil tempore, autem ipsam animi voluptate quia deleniti neque amet blanditiis deserunt itaque laudantium voluptas consequatur dolore officiis nulla.

        Lorem ipsum dolor sit amet, consectetur adipisicing elit.
        Quaerat cupiditate odio nihil tempore, autem ipsam animi voluptate quia deleniti neque amet blanditiis deserunt itaque laudantium voluptas consequatur dolore officiis nulla.
    - title: Using the API
      level: 2
      content: |
        Lorem ipsum dolor sit amet, consectetur adipisicing elit.
        Quaerat cupiditate odio nihil tempore, autem ipsam animi voluptate quia deleniti neque amet blanditiis deserunt itaque laudantium voluptas consequatur dolore officiis nulla.

        Lorem ipsum dolor sit amet, consectetur adipisicing elit.
        Quaerat cupiditate odio nihil tempore, autem ipsam animi voluptate quia deleniti neque amet blanditiis deserunt itaque laudantium voluptas consequatur dolore officiis nulla.

        Testing testing testing.
```

#### Resources

We present endpoints in the context of the resources they represent. We use a top-level list of the resources we want to
present along with optional details about these resources.

The top-level list:
```
  x-resources:
    - name: Projects
      description: This describes project resource
      further-description:
        - title: Project permissions
          content: |
            Lorem ipsum dolor sit amet, consectetur adipisicing elit.
            Quaerat cupiditate odio nihil tempore, autem ipsam animi voluptate quia deleniti neque amet blanditiis deserunt itaque laudantium voluptas consequatur dolore officiis nulla.

    - name: Scenes
    - name: Tokens
    - name: Tools
```

Each path can then reference the resource they represent via `x-resource: <resource name>`


