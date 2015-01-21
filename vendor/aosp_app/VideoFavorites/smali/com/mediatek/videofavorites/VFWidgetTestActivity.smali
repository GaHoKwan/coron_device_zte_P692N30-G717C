.class public Lcom/mediatek/videofavorites/VFWidgetTestActivity;
.super Lcom/mediatek/videofavorites/WidgetHostActivity;
.source "VFWidgetTestActivity.java"


# static fields
.field private static final WIDGET_LABEL:Ljava/lang/String; = "Video Favorites"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/mediatek/videofavorites/WidgetHostActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getWidgetLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "Video Favorites"

    return-object v0
.end method
