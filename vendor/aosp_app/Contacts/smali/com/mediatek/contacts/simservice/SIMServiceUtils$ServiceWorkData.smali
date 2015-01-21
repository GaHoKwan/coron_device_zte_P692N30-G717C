.class public Lcom/mediatek/contacts/simservice/SIMServiceUtils$ServiceWorkData;
.super Ljava/lang/Object;
.source "SIMServiceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/simservice/SIMServiceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceWorkData"
.end annotation


# instance fields
.field public mSimCursor:Landroid/database/Cursor;

.field public mSimId:I

.field public mSimType:I

.field public mSlotId:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput v0, p0, Lcom/mediatek/contacts/simservice/SIMServiceUtils$ServiceWorkData;->mSlotId:I

    .line 55
    iput v0, p0, Lcom/mediatek/contacts/simservice/SIMServiceUtils$ServiceWorkData;->mSimId:I

    .line 56
    iput v0, p0, Lcom/mediatek/contacts/simservice/SIMServiceUtils$ServiceWorkData;->mSimType:I

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/contacts/simservice/SIMServiceUtils$ServiceWorkData;->mSimCursor:Landroid/database/Cursor;

    .line 60
    return-void
.end method

.method constructor <init>(IIILandroid/database/Cursor;)V
    .locals 1
    .parameter "slotId"
    .parameter "simId"
    .parameter "simType"
    .parameter "simCursor"

    .prologue
    const/4 v0, -0x1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput v0, p0, Lcom/mediatek/contacts/simservice/SIMServiceUtils$ServiceWorkData;->mSlotId:I

    .line 55
    iput v0, p0, Lcom/mediatek/contacts/simservice/SIMServiceUtils$ServiceWorkData;->mSimId:I

    .line 56
    iput v0, p0, Lcom/mediatek/contacts/simservice/SIMServiceUtils$ServiceWorkData;->mSimType:I

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/contacts/simservice/SIMServiceUtils$ServiceWorkData;->mSimCursor:Landroid/database/Cursor;

    .line 63
    iput p1, p0, Lcom/mediatek/contacts/simservice/SIMServiceUtils$ServiceWorkData;->mSlotId:I

    .line 64
    iput p2, p0, Lcom/mediatek/contacts/simservice/SIMServiceUtils$ServiceWorkData;->mSimId:I

    .line 65
    iput p3, p0, Lcom/mediatek/contacts/simservice/SIMServiceUtils$ServiceWorkData;->mSimType:I

    .line 66
    iput-object p4, p0, Lcom/mediatek/contacts/simservice/SIMServiceUtils$ServiceWorkData;->mSimCursor:Landroid/database/Cursor;

    .line 67
    return-void
.end method
