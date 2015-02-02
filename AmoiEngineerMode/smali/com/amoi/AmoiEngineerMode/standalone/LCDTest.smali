.class public Lcom/amoi/AmoiEngineerMode/standalone/LCDTest;
.super Lcom/amoi/AmoiEngineerMode/base/LcdBase;
.source "LCDTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/LcdBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected changeColor()V
    .locals 4

    .prologue
    .line 15
    iget v0, p0, Lcom/amoi/AmoiEngineerMode/base/LcdBase;->currentColor:I

    sget-object v1, Lcom/amoi/AmoiEngineerMode/standalone/LCDTest;->COLORS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/amoi/AmoiEngineerMode/base/LcdBase;->currentColor:I

    if-gez v0, :cond_1

    .line 16
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/amoi/AmoiEngineerMode/base/LcdBase;->currentColor:I

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/LcdBase;->layout:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/amoi/AmoiEngineerMode/standalone/LCDTest;->COLORS:[I

    iget v2, p0, Lcom/amoi/AmoiEngineerMode/base/LcdBase;->currentColor:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/amoi/AmoiEngineerMode/base/LcdBase;->currentColor:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 19
    return-void
.end method
