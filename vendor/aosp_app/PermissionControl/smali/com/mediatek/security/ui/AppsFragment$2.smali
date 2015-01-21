.class final Lcom/mediatek/security/ui/AppsFragment$2;
.super Ljava/lang/Object;
.source "AppsFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/security/ui/AppsFragment;
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
        "Lcom/mediatek/security/ui/AppsFragment$AppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/security/ui/AppsFragment$2;->mCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/mediatek/security/ui/AppsFragment$AppInfo;Lcom/mediatek/security/ui/AppsFragment$AppInfo;)I
    .locals 3
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 326
    iget-object v0, p0, Lcom/mediatek/security/ui/AppsFragment$2;->mCollator:Ljava/text/Collator;

    #getter for: Lcom/mediatek/security/ui/AppsFragment$AppInfo;->mAppName:Ljava/lang/String;
    invoke-static {p1}, Lcom/mediatek/security/ui/AppsFragment$AppInfo;->access$300(Lcom/mediatek/security/ui/AppsFragment$AppInfo;)Ljava/lang/String;

    move-result-object v1

    #getter for: Lcom/mediatek/security/ui/AppsFragment$AppInfo;->mAppName:Ljava/lang/String;
    invoke-static {p2}, Lcom/mediatek/security/ui/AppsFragment$AppInfo;->access$300(Lcom/mediatek/security/ui/AppsFragment$AppInfo;)Ljava/lang/String;

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
    .line 321
    check-cast p1, Lcom/mediatek/security/ui/AppsFragment$AppInfo;

    .end local p1
    check-cast p2, Lcom/mediatek/security/ui/AppsFragment$AppInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/security/ui/AppsFragment$2;->compare(Lcom/mediatek/security/ui/AppsFragment$AppInfo;Lcom/mediatek/security/ui/AppsFragment$AppInfo;)I

    move-result v0

    return v0
.end method
