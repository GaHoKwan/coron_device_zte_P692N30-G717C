.class public interface abstract Lcom/mediatek/mms/ext/IMmsAdvanceSearch;
.super Ljava/lang/Object;
.source "IMmsAdvanceSearch.java"


# static fields
.field public static final ADVANCED_SEARCH_BEGIN_DATE:Ljava/lang/String; = "begin_date"

.field public static final ADVANCED_SEARCH_CONTENT:Ljava/lang/String; = "content"

.field public static final ADVANCED_SEARCH_END_DATE:Ljava/lang/String; = "end_date"

.field public static final ADVANCED_SEARCH_NAME:Ljava/lang/String; = "name"

.field public static final ADVANCED_SEARCH_NUMBER:Ljava/lang/String; = "number"

.field public static final ADVANCED_SEARCH_QUERY:Ljava/lang/String; = "advanced_query"


# virtual methods
.method public abstract buildAdvanceSearchUri()Landroid/net/Uri;
.end method

.method public abstract initAdvancedData(Landroid/content/Intent;)V
.end method
