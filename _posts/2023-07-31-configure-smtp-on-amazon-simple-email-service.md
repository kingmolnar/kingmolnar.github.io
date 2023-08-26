---
layout: post
title:  "Configure SMTP on Amazon Simple Email Service"
date:   2023-07-10 18:10:59 +0000
external_url: https://medium.molnar.ai/configure-smtp-on-amazon-simple-email-service-400159c92fea
category: sys-ops
tags:
    - AWS
---
This article shows you how to setup your SMTP server on AWS.
<!--more-->
The risks to activate any email service on your own systems are too great. If compromised, you may not only contribute to more spamming and phishing attacks, but also jeopardize the network reputation of your organization. You may get your company or university banned from sending emails.

Fortunately, there are numerous cloud-based SMTP services. This article walks you through the steps setting up Amazon SES.

{% include read_this_on_medium.md item = page.external_url %}