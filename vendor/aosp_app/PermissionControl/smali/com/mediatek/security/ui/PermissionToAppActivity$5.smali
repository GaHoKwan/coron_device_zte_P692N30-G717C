.class final Lcom/mediatek/security/ui/PermissionToAppActivity$5;
.super Ljava/lang/Object;
.source "PermissionToAppActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/security/ui/PermissionToAppActivity;
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
        "Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/security/ui/PermissionToAppActivity$5;->mCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;)I
    .locals 3
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 383
    iget-object v0, p0, Lcom/mediatek/security/ui/PermissionToAppActivity$5;->mCollator:Ljava/text/Collator;

    #getter for: Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;->mPkgLabel:Ljava/lang/String;
    invoke-static {p1}, Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;->access$200(Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;)Ljava/lang/String;

    move-result-object v1

    #getter for: Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;->mPkgLabel:Ljava/lang/String;
    invoke-static {p2}, Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;->access$200(Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;)Ljava/lang/String;

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
    .line 377
    check-cast p1, Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;

    .end local p1
    check-cast p2, Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/security/ui/PermissionToAppActivity$5;->compare(Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;Lcom/mediatek/security/ui/PermissionToAppActivity$MyPermissionRecord;)I

    move-result v0

    return v0
.end method
