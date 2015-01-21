.class final Lcom/mediatek/security/ui/AppToPermissionActivity$5;
.super Ljava/lang/Object;
.source "AppToPermissionActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/security/ui/AppToPermissionActivity;
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
        "Lcom/mediatek/common/mom/PermissionRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/security/ui/AppToPermissionActivity$5;->mCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/mediatek/common/mom/PermissionRecord;Lcom/mediatek/common/mom/PermissionRecord;)I
    .locals 5
    .parameter "obj1"
    .parameter "obj2"

    .prologue
    .line 406
    iget-object v2, p1, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    invoke-static {v2}, Lcom/mediatek/security/service/PermControlUtils;->getPermissionIndex(Ljava/lang/String;)I

    move-result v0

    .line 408
    .local v0, obj1Index:I
    iget-object v2, p2, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    invoke-static {v2}, Lcom/mediatek/security/service/PermControlUtils;->getPermissionIndex(Ljava/lang/String;)I

    move-result v1

    .line 410
    .local v1, obj2Index:I
    iget-object v2, p0, Lcom/mediatek/security/ui/AppToPermissionActivity$5;->mCollator:Ljava/text/Collator;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 401
    check-cast p1, Lcom/mediatek/common/mom/PermissionRecord;

    .end local p1
    check-cast p2, Lcom/mediatek/common/mom/PermissionRecord;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/security/ui/AppToPermissionActivity$5;->compare(Lcom/mediatek/common/mom/PermissionRecord;Lcom/mediatek/common/mom/PermissionRecord;)I

    move-result v0

    return v0
.end method
