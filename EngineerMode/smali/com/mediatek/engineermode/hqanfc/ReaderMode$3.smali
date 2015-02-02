.class Lcom/mediatek/engineermode/hqanfc/ReaderMode$3;
.super Ljava/lang/Object;
.source "ReaderMode.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/hqanfc/ReaderMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "checked"

    .prologue
    .line 205
    const-string v1, "EM/HQA/NFC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ReaderMode]onCheckedChanged view is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->access$900(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)[Landroid/widget/CheckBox;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mRgTypeA:Landroid/widget/RadioGroup;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->access$1000(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)Landroid/widget/RadioGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 209
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mRgTypeA:Landroid/widget/RadioGroup;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->access$1000(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)Landroid/widget/RadioGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->access$900(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)[Landroid/widget/CheckBox;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mRgTypeB:Landroid/widget/RadioGroup;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->access$1100(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)Landroid/widget/RadioGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 213
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mRgTypeB:Landroid/widget/RadioGroup;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->access$1100(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)Landroid/widget/RadioGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 215
    .end local v0           #i:I
    :cond_1
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->access$900(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)[Landroid/widget/CheckBox;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 216
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mRgTypeF:Landroid/widget/RadioGroup;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->access$1200(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)Landroid/widget/RadioGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 217
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mRgTypeF:Landroid/widget/RadioGroup;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->access$1200(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)Landroid/widget/RadioGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 219
    .end local v0           #i:I
    :cond_2
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->access$900(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)[Landroid/widget/CheckBox;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 220
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mRgTypeVSubCarrier:Landroid/widget/RadioGroup;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->access$1300(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)Landroid/widget/RadioGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 221
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mRgTypeVSubCarrier:Landroid/widget/RadioGroup;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->access$1300(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)Landroid/widget/RadioGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 223
    :cond_3
    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mRgTypeVMode:Landroid/widget/RadioGroup;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->access$1400(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)Landroid/widget/RadioGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 224
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mRgTypeVMode:Landroid/widget/RadioGroup;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->access$1400(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)Landroid/widget/RadioGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 226
    :cond_4
    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mRgTypeVRate:Landroid/widget/RadioGroup;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->access$1500(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)Landroid/widget/RadioGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 227
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mRgTypeVRate:Landroid/widget/RadioGroup;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->access$1500(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)Landroid/widget/RadioGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 230
    .end local v0           #i:I
    :cond_5
    return-void
.end method
