.class public Lcom/mediatek/launcher2/ext/DefaultSearchButtonExt;
.super Ljava/lang/Object;
.source "DefaultSearchButtonExt.java"

# interfaces
.implements Lcom/mediatek/launcher2/ext/ISearchButtonExt;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultSearchButtonExt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method


# virtual methods
.method public needUpdateSearchButtonResource(Landroid/widget/ImageView;I)Z
    .locals 2
    .parameter "view"
    .parameter "id"

    .prologue
    .line 50
    const-string v0, "DefaultSearchButtonExt"

    const-string v1, "default needUpdateSearchButtonResource called."

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const/4 v0, 0x1

    return v0
.end method
