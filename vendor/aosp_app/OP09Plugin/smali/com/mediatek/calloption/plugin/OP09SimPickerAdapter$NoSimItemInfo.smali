.class public Lcom/mediatek/calloption/plugin/OP09SimPickerAdapter$NoSimItemInfo;
.super Ljava/lang/Object;
.source "OP09SimPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/calloption/plugin/OP09SimPickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoSimItemInfo"
.end annotation


# instance fields
.field public mPhoneType:I

.field public mSlot:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "phoneType"
    .parameter "slot"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/mediatek/calloption/plugin/OP09SimPickerAdapter$NoSimItemInfo;->mPhoneType:I

    .line 35
    iput p2, p0, Lcom/mediatek/calloption/plugin/OP09SimPickerAdapter$NoSimItemInfo;->mSlot:I

    .line 36
    return-void
.end method
