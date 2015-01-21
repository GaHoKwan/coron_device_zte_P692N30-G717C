.class public Lcom/mediatek/contacts/simcontact/SimCardUtils$SimUri;
.super Ljava/lang/Object;
.source "SimCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/simcontact/SimCardUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimUri"
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "icc"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSimSdnUri(I)Landroid/net/Uri;
    .locals 1
    .parameter "slotId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 76
    invoke-static {p0}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getSlotSdnUri(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getSimUri(I)Landroid/net/Uri;
    .locals 1
    .parameter "slotId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 64
    invoke-static {p0}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getSlotIccUri(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
