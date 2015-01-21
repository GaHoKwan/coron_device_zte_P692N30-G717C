.class public interface abstract Lcom/mediatek/gallery3d/ext/IMovieExtension;
.super Ljava/lang/Object;
.source "IMovieExtension.java"


# static fields
.field public static final FEATURE_ENABLE_BOOKMARK:I = 0x4

.field public static final FEATURE_ENABLE_NOTIFICATION_PLUS:I = 0x2

.field public static final FEATURE_ENABLE_SETTINGS:I = 0x7

.field public static final FEATURE_ENABLE_STEREO_AUDIO:I = 0x6

.field public static final FEATURE_ENABLE_STOP:I = 0x1

.field public static final FEATURE_ENABLE_STREAMING:I = 0x3

.field public static final FEATURE_ENABLE_VIDEO_LIST:I = 0x5


# virtual methods
.method public abstract getFeatureList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHooker()Lcom/mediatek/gallery3d/ext/IActivityHooker;
.end method

.method public abstract getMovieStrategy()Lcom/mediatek/gallery3d/ext/IMovieStrategy;
.end method
