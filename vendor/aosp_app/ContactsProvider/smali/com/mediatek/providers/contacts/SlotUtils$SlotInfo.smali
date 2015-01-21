.class final Lcom/mediatek/providers/contacts/SlotUtils$SlotInfo;
.super Ljava/lang/Object;
.source "SlotUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/providers/contacts/SlotUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SlotInfo"
.end annotation


# instance fields
.field mSlotId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "slotId"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/mediatek/providers/contacts/SlotUtils$SlotInfo;->mSlotId:I

    .line 39
    return-void
.end method
