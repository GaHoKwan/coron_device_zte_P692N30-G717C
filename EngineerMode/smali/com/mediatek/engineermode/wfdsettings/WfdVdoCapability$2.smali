.class Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$2;
.super Ljava/lang/Object;
.source "WfdVdoCapability.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$2;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 104
    const/4 v1, 0x0

    .line 105
    .local v1, newState:Z
    iget-object v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$2;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;

    #getter for: Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRdResoulution:[Landroid/widget/RadioButton;
    invoke-static {v2}, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->access$200(Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;)[Landroid/widget/RadioButton;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    iget-object v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$2;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;

    #getter for: Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRdResoulution:[Landroid/widget/RadioButton;
    invoke-static {v2}, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->access$200(Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;)[Landroid/widget/RadioButton;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    .line 107
    if-ne v1, v5, :cond_0

    .line 108
    iget-object v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$2;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;

    #getter for: Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRdResoulution:[Landroid/widget/RadioButton;
    invoke-static {v2}, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->access$200(Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;)[Landroid/widget/RadioButton;

    move-result-object v2

    aget-object v2, v2, v5

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 109
    iget-object v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$2;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;

    #getter for: Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRdResoulution:[Landroid/widget/RadioButton;
    invoke-static {v2}, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->access$200(Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;)[Landroid/widget/RadioButton;

    move-result-object v2

    aget-object v2, v2, v6

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 110
    iget-object v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$2;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;

    #getter for: Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mCb720pSettingMenu:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->access$300(Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 111
    iget-object v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$2;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;

    #getter for: Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRg720pDefinition:Landroid/widget/RadioGroup;
    invoke-static {v2}, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->access$000(Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;)Landroid/widget/RadioGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 112
    iget-object v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$2;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;

    #getter for: Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mCb1080pSettingMenu:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->access$400(Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 113
    iget-object v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$2;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;

    #getter for: Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRg1080pDefinition:Landroid/widget/RadioGroup;
    invoke-static {v2}, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->access$100(Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;)Landroid/widget/RadioGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$2;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;

    #getter for: Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRdResoulution:[Landroid/widget/RadioButton;
    invoke-static {v2}, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->access$200(Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;)[Landroid/widget/RadioButton;

    move-result-object v2

    aget-object v2, v2, v5

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 116
    iget-object v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$2;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;

    #getter for: Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRdResoulution:[Landroid/widget/RadioButton;
    invoke-static {v2}, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->access$200(Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;)[Landroid/widget/RadioButton;

    move-result-object v2

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    .line 117
    if-ne v1, v5, :cond_0

    .line 118
    iget-object v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$2;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;

    #getter for: Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRdResoulution:[Landroid/widget/RadioButton;
    invoke-static {v2}, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->access$200(Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;)[Landroid/widget/RadioButton;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 119
    iget-object v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$2;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;

    #getter for: Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRdResoulution:[Landroid/widget/RadioButton;
    invoke-static {v2}, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->access$200(Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;)[Landroid/widget/RadioButton;

    move-result-object v2

    aget-object v2, v2, v6

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 120
    iget-object v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$2;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;

    #getter for: Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mCb720pSettingMenu:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->access$300(Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 121
    iget-object v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$2;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;

    #getter for: Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRg720pDefinition:Landroid/widget/RadioGroup;
    invoke-static {v2}, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->access$000(Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;)Landroid/widget/RadioGroup;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 122
    iget-object v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$2;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;

    #getter for: Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mCb720pSettingMenu:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->access$300(Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    .line 123
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$2;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;

    #getter for: Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRg720pDefinition:Landroid/widget/RadioGroup;
    invoke-static {v2}, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->access$000(Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;)Landroid/widget/RadioGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 124
    iget-object v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$2;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;

    #getter for: Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRg720pDefinition:Landroid/widget/RadioGroup;
    invoke-static {v2}, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->access$000(Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;)Landroid/widget/RadioGroup;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 127
    .end local v0           #i:I
    :cond_2
    iget-object v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$2;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;

    #getter for: Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mCb1080pSettingMenu:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->access$400(Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iget-object v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$2;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;

    #getter for: Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRg1080pDefinition:Landroid/widget/RadioGroup;
    invoke-static {v2}, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->access$100(Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;)Landroid/widget/RadioGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 130
    :cond_3
    iget-object v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$2;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;

    #getter for: Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRdResoulution:[Landroid/widget/RadioButton;
    invoke-static {v2}, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->access$200(Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;)[Landroid/widget/RadioButton;

    move-result-object v2

    aget-object v2, v2, v6

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    iget-object v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$2;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;

    #getter for: Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRdResoulution:[Landroid/widget/RadioButton;
    invoke-static {v2}, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->access$200(Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;)[Landroid/widget/RadioButton;

    move-result-object v2

    aget-object v2, v2, v6

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    .line 132
    if-ne v1, v5, :cond_0

    .line 133
    iget-object v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$2;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;

    #getter for: Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRdResoulution:[Landroid/widget/RadioButton;
    invoke-static {v2}, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->access$200(Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;)[Landroid/widget/RadioButton;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 134
    iget-object v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$2;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;

    #getter for: Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRdResoulution:[Landroid/widget/RadioButton;
    invoke-static {v2}, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->access$200(Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;)[Landroid/widget/RadioButton;

    move-result-object v2

    aget-object v2, v2, v5

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 135
    iget-object v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$2;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;

    #getter for: Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mCb720pSettingMenu:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->access$300(Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 136
    iget-object v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$2;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;

    #getter for: Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRg720pDefinition:Landroid/widget/RadioGroup;
    invoke-static {v2}, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->access$000(Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;)Landroid/widget/RadioGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 137
    iget-object v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$2;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;

    #getter for: Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mCb1080pSettingMenu:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->access$400(Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 138
    iget-object v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$2;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;

    #getter for: Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRg1080pDefinition:Landroid/widget/RadioGroup;
    invoke-static {v2}, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->access$100(Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;)Landroid/widget/RadioGroup;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 139
    iget-object v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$2;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;

    #getter for: Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mCb1080pSettingMenu:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->access$400(Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 140
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$2;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;

    #getter for: Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRg1080pDefinition:Landroid/widget/RadioGroup;
    invoke-static {v2}, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->access$100(Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;)Landroid/widget/RadioGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 141
    iget-object v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability$2;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;

    #getter for: Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->mRg1080pDefinition:Landroid/widget/RadioGroup;
    invoke-static {v2}, Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;->access$100(Lcom/mediatek/engineermode/wfdsettings/WfdVdoCapability;)Landroid/widget/RadioGroup;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
