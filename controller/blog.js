const db = require("../util/db.config");
const { check, validationResult } = require("express-validator");
const sequelize = db.sequelize;
const Blog = db.blog;

exports.create = async (req, res) => {
  const errors = validationResult(req);
  if (!errors.isEmpty()) {
    res.status(422).json({ errors: errors.array() });
    return;
  }
  const blog = req.body;
  if (blog) {
    try {
      const newBlog = await sequelize.transaction(t => {
        return Blog.create(blog, { transaction: t });
      });
      res.json(newBlog);
    } catch (error) {
      console.log(error);
      res.json({ status: false });
    }
  }
};

exports.listid = async (req, res) => {
  const blogId = parseInt(req.params.id);
  try {
    let blogs = {};
    if (blogId) {
      blogs = await Blog.findByPk(blogId);
    }
    res.json(blogs);
  } catch (error) {
    res.json({ status: false, message: error.errors });
  }
};

exports.list = async (req, res) => {
  try {
    const blogs = await Blog.findAll();
    //res.json(blogs);
    res.render("blog", { title: "Blog", data: blogs });
  } catch (error) {
    res.json({ status: false, message: error.errors });
  }
};

exports.update = async (req, res) => {
  const errors = validationResult(req);
  if (!errors.isEmpty()) {
    res.status(422).json({ errors: errors.array() });
    return;
  }
  const blog = req.body;
  const postId = parseInt(req.params.id);
  let updateBlog = null;
  if (blog && postId) {
    try {
      updateBlog = await sequelize.transaction(t => {
        return Blog.update(
          blog,
          { where: { postId: postId } },
          { transaction: t }
        );
      });
      res.json(updateBlog);
    } catch (error) {
      res.json({ status: false, message: error.errors });
    }
  }
};

exports.delete = async (req, res) => {
  const blogId = req.params.id;
  let blogDestroy = null;
  if (blogId) {
    try {
      const blog = await Blog.findByPk(blogId);
      if (blog) {
        blogDestroy = await blog.destroy();
      }
      res.json(blogDestroy);
    } catch (error) {
      console.log(error);
      res.json({ status: false, message: error.errors });
    }
  }
};

exports.validate = method => {
  switch (method) {
    case "create": {
      return [
        check("postTitle", "postTitle Invalid").isLength({ min: 1 }),
        check("postDetail", "postDetail Invalid").isLength({ min: 1 }),
        check("postDtm", "postDtm Invalid").isLength({ min: 1 }),
        check("postAuthor", "postAuthor Invalid").isLength({ min: 1 }),
        check("postStatus", "postStatus Invalid").isLength({ min: 1 })
      ];
    }
    case "update": {
      return [
        check("postTitle", "postTitle Invalid").isLength({ min: 1 }),
        check("postDetail", "postDetail Invalid").isLength({ min: 1 }),
        check("postDtm", "postDtm Invalid").isLength({ min: 1 }),
        check("postAuthor", "postAuthor Invalid").isLength({ min: 1 }),
        check("postStatus", "postStatus Invalid").isLength({ min: 1 })
      ];
    }
  }
};
