.class public interface abstract Lcom/mediatek/gallery3d/ext/IMovieListLoader;
.super Ljava/lang/Object;
.source "IMovieListLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gallery3d/ext/IMovieListLoader$LoaderListener;
    }
.end annotation


# static fields
.field public static final EXTRA_ALL_VIDEO_FOLDER:Ljava/lang/String; = "mediatek.intent.extra.ALL_VIDEO_FOLDER"

.field public static final EXTRA_ENABLE_VIDEO_LIST:Ljava/lang/String; = "mediatek.intent.extra.ENABLE_VIDEO_LIST"

.field public static final EXTRA_ORDERBY:Ljava/lang/String; = "mediatek.intent.extra.VIDEO_LIST_ORDERBY"


# virtual methods
.method public abstract cancelList()V
.end method

.method public abstract fillVideoList(Landroid/content/Context;Landroid/content/Intent;Lcom/mediatek/gallery3d/ext/IMovieListLoader$LoaderListener;Lcom/mediatek/gallery3d/ext/IMovieItem;)V
.end method

.method public abstract isEnabledVideoList(Landroid/content/Intent;)Z
.end method
