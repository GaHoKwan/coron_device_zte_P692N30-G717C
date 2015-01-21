.class final Lcom/mediatek/vlw/Utils$2;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/vlw/Utils;->getUrisFromBucketId(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field final mCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/vlw/Utils$2;->mCollator:Ljava/text/Collator;

    .line 153
    return-void
.end method


# virtual methods
.method public compare(Landroid/net/Uri;Landroid/net/Uri;)I
    .locals 3
    .parameter "uri1"
    .parameter "uri2"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/mediatek/vlw/Utils$2;->mCollator:Ljava/text/Collator;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    check-cast p1, Landroid/net/Uri;

    .end local p1
    check-cast p2, Landroid/net/Uri;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/vlw/Utils$2;->compare(Landroid/net/Uri;Landroid/net/Uri;)I

    move-result v0

    return v0
.end method
