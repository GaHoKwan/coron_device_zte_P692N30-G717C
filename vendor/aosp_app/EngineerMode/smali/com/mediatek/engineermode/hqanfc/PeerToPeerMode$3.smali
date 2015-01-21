.class Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode$3;
.super Ljava/lang/Object;
.source "PeerToPeerMode.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "checked"

    .prologue
    .line 146
    const-string v1, "EM/HQA/NFC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PeerToPeerMode]onCheckedChanged view is "

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

    .line 148
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->access$700(Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;)[Landroid/widget/CheckBox;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mRgTypeA:Landroid/widget/RadioGroup;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->access$800(Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;)Landroid/widget/RadioGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 150
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mRgTypeA:Landroid/widget/RadioGroup;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->access$800(Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;)Landroid/widget/RadioGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mSettingsCkBoxs:[Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->access$700(Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;)[Landroid/widget/CheckBox;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mRgTypeF:Landroid/widget/RadioGroup;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->access$900(Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;)Landroid/widget/RadioGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 154
    iget-object v1, p0, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode$3;->this$0:Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->mRgTypeF:Landroid/widget/RadioGroup;
    invoke-static {v1}, Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;->access$900(Lcom/mediatek/engineermode/hqanfc/PeerToPeerMode;)Landroid/widget/RadioGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 157
    .end local v0           #i:I
    :cond_1
    return-void
.end method
