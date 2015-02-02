.class Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;
.super Ljava/lang/Object;
.source "BandSelect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/bandselect/BandSelect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BandModeMap"
.end annotation


# instance fields
.field public mBit:I

.field public mChkBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Landroid/widget/CheckBox;I)V
    .locals 0
    .parameter "chkbox"
    .parameter "bit"

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p1, p0, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;->mChkBox:Landroid/widget/CheckBox;

    .line 174
    iput p2, p0, Lcom/mediatek/engineermode/bandselect/BandSelect$BandModeMap;->mBit:I

    .line 175
    return-void
.end method
