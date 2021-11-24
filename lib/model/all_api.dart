class AutoGenerate {
  AutoGenerate({
    required this.id,
    required this.date,
    required this.dateGmt,
    required this.guid,
    required this.modified,
    required this.modifiedGmt,
    required this.slug,
    required this.status,
    required this.type,
    required this.link,
    required this.title,
    required this.content,
    required this.excerpt,
    required this.author,
    required this.featuredMedia,
    required this.commentStatus,
    required this.pingStatus,
    required this.sticky,
    required this.template,
    required this.format,
    required this.categories,
    required this.tags,
  });
  late final int id;
  late final String date;
  late final String dateGmt;
  late final Guid guid;
  late final String modified;
  late final String modifiedGmt;
  late final String slug;
  late final String status;
  late final String type;
  late final String link;
  late final Title title;
  late final Content content;
  late final Excerpt excerpt;
  late final int author;
  late final int featuredMedia;
  late final String commentStatus;
  late final String pingStatus;
  late final bool sticky;
  late final String template;
  late final String format;
  late final List<int> categories;
  late final List<dynamic> tags;

  AutoGenerate.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    date = json['date'];
    dateGmt = json['date_gmt'];
    guid = Guid.fromJson(json['guid']);
    modified = json['modified'];
    modifiedGmt = json['modified_gmt'];
    slug = json['slug'];
    status = json['status'];
    type = json['type'];
    link = json['link'];
    title = Title.fromJson(json['title']);
    content = Content.fromJson(json['content']);
    excerpt = Excerpt.fromJson(json['excerpt']);
    author = json['author'];
    featuredMedia = json['featured_media'];
    commentStatus = json['comment_status'];
    pingStatus = json['ping_status'];
    sticky = json['sticky'];
    template = json['template'];
    format = json['format'];
    categories = List.castFrom<dynamic, int>(json['categories']);
    tags = List.castFrom<dynamic, dynamic>(json['tags']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['date'] = date;
    _data['date_gmt'] = dateGmt;
    _data['guid'] = guid.toJson();
    _data['modified'] = modified;
    _data['modified_gmt'] = modifiedGmt;
    _data['slug'] = slug;
    _data['status'] = status;
    _data['type'] = type;
    _data['link'] = link;
    _data['title'] = title.toJson();
    _data['content'] = content.toJson();
    _data['excerpt'] = excerpt.toJson();
    _data['author'] = author;
    _data['featured_media'] = featuredMedia;
    _data['comment_status'] = commentStatus;
    _data['ping_status'] = pingStatus;
    _data['sticky'] = sticky;
    _data['template'] = template;
    _data['format'] = format;
    _data['categories'] = categories;
    _data['tags'] = tags;
    return _data;
  }
}

class Guid {
  Guid({
    required this.rendered,
  });
  late final String rendered;

  Guid.fromJson(Map<String, dynamic> json) {
    rendered = json['rendered'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['rendered'] = rendered;
    return _data;
  }
}

class Title {
  Title({
    required this.rendered,
  });
  late final String rendered;

  Title.fromJson(Map<String, dynamic> json) {
    rendered = json['rendered'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['rendered'] = rendered;
    return _data;
  }
}

class Content {
  Content({
    required this.rendered,
    required this.protected,
  });
  late final String rendered;
  late final bool protected;

  Content.fromJson(Map<String, dynamic> json) {
    rendered = json['rendered'];
    protected = json['protected'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['rendered'] = rendered;
    _data['protected'] = protected;
    return _data;
  }
}

class Excerpt {
  Excerpt({
    required this.rendered,
    required this.protected,
  });
  late final String rendered;
  late final bool protected;

  Excerpt.fromJson(Map<String, dynamic> json) {
    rendered = json['rendered'];
    protected = json['protected'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['rendered'] = rendered;
    _data['protected'] = protected;
    return _data;
  }
}

class Self {
  Self({
    required this.href,
  });
  late final String href;

  Self.fromJson(Map<String, dynamic> json) {
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['href'] = href;
    return _data;
  }
}

class Collection {
  Collection({
    required this.href,
  });
  late final String href;

  Collection.fromJson(Map<String, dynamic> json) {
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['href'] = href;
    return _data;
  }
}

class About {
  About({
    required this.href,
  });
  late final String href;

  About.fromJson(Map<String, dynamic> json) {
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['href'] = href;
    return _data;
  }
}

class Author {
  Author({
    required this.embeddable,
    required this.href,
  });
  late final bool embeddable;
  late final String href;

  Author.fromJson(Map<String, dynamic> json) {
    embeddable = json['embeddable'];
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['embeddable'] = embeddable;
    _data['href'] = href;
    return _data;
  }
}

class Replies {
  Replies({
    required this.embeddable,
    required this.href,
  });
  late final bool embeddable;
  late final String href;

  Replies.fromJson(Map<String, dynamic> json) {
    embeddable = json['embeddable'];
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['embeddable'] = embeddable;
    _data['href'] = href;
    return _data;
  }
}
