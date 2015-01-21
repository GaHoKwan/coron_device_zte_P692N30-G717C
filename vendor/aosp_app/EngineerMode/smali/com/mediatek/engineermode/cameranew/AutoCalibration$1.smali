.class Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;
.super Ljava/lang/Object;
.source "AutoCalibration.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/cameranew/AutoCalibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 18
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 141
    const-string v14, "EM/AutoCalibration"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Button is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "isChecked "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    if-eqz p2, :cond_5

    .line 143
    const/4 v14, 0x3

    new-array v2, v14, [Landroid/view/View;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfBracketLayout:Landroid/widget/LinearLayout;
    invoke-static {v15}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$000(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/LinearLayout;

    move-result-object v15

    aput-object v15, v2, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfThroughLayout:Landroid/widget/LinearLayout;
    invoke-static {v15}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$100(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/LinearLayout;

    move-result-object v15

    aput-object v15, v2, v14

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfFullScanSetLayout:Landroid/widget/LinearLayout;
    invoke-static {v15}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$200(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/LinearLayout;

    move-result-object v15

    aput-object v15, v2, v14

    .line 144
    .local v2, afLayoutArr:[Landroid/view/View;
    const/4 v14, 0x5

    new-array v3, v14, [Landroid/widget/RadioButton;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfAuto:Landroid/widget/RadioButton;
    invoke-static {v15}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$300(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/RadioButton;

    move-result-object v15

    aput-object v15, v3, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfBracket:Landroid/widget/RadioButton;
    invoke-static {v15}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$400(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/RadioButton;

    move-result-object v15

    aput-object v15, v3, v14

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfFullScan:Landroid/widget/RadioButton;
    invoke-static {v15}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$500(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/RadioButton;

    move-result-object v15

    aput-object v15, v3, v14

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfThrough:Landroid/widget/RadioButton;
    invoke-static {v15}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$600(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/RadioButton;

    move-result-object v15

    aput-object v15, v3, v14

    const/4 v14, 0x4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfContinuous:Landroid/widget/RadioButton;
    invoke-static {v15}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$700(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/RadioButton;

    move-result-object v15

    aput-object v15, v3, v14

    .line 146
    .local v3, afRadioArr:[Landroid/widget/RadioButton;
    const/4 v8, 0x0

    .line 147
    .local v8, changeAf:Z
    move-object v4, v3

    .local v4, arr$:[Landroid/widget/RadioButton;
    array-length v12, v4

    .local v12, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_0
    if-ge v10, v12, :cond_0

    aget-object v13, v4, v10

    .line 148
    .local v13, rb:Landroid/widget/RadioButton;
    move-object/from16 v0, p1

    if-ne v13, v0, :cond_1

    .line 149
    const/4 v8, 0x1

    .line 153
    .end local v13           #rb:Landroid/widget/RadioButton;
    :cond_0
    if-eqz v8, :cond_3

    .line 154
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfMode:I
    invoke-static {v14}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$800(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)I

    move-result v14

    const/4 v15, 0x2

    if-eq v14, v15, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfFullScan:Landroid/widget/RadioButton;
    invoke-static {v14}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$500(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/RadioButton;

    move-result-object v14

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_6

    .line 155
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    invoke-virtual {v14}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f06004d

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 156
    .local v6, captureSizeArr:[Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v7, captureSizeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    array-length v14, v6

    if-ge v9, v14, :cond_2

    .line 158
    aget-object v14, v6, v9

    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 147
    .end local v6           #captureSizeArr:[Ljava/lang/String;
    .end local v7           #captureSizeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v9           #i:I
    .restart local v13       #rb:Landroid/widget/RadioButton;
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 160
    .end local v13           #rb:Landroid/widget/RadioButton;
    .restart local v6       #captureSizeArr:[Ljava/lang/String;
    .restart local v7       #captureSizeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9       #i:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    const v15, 0x7f080534

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance v1, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    const v15, 0x1090008

    invoke-direct {v1, v14, v15, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 163
    .local v1, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v14, 0x1090009

    invoke-virtual {v1, v14}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 164
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mNormalCaptureSize:Landroid/widget/Spinner;
    invoke-static {v14}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$900(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/Spinner;

    move-result-object v14

    invoke-virtual {v14, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 179
    .end local v1           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v6           #captureSizeArr:[Ljava/lang/String;
    .end local v7           #captureSizeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v9           #i:I
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mNormalMode:Landroid/widget/RadioButton;
    invoke-static {v14}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$1000(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/RadioButton;

    move-result-object v14

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_8

    .line 180
    const/4 v14, 0x3

    new-array v11, v14, [I

    fill-array-data v11, :array_0

    .line 181
    .local v11, layouts:[I
    const/4 v14, 0x2

    new-array v5, v14, [Landroid/widget/RadioButton;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mVideoCliplMode:Landroid/widget/RadioButton;
    invoke-static {v15}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$1100(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/RadioButton;

    move-result-object v15

    aput-object v15, v5, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mMulFrameMode:Landroid/widget/RadioButton;
    invoke-static {v15}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$1200(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/RadioButton;

    move-result-object v15

    aput-object v15, v5, v14

    .line 182
    .local v5, buttons:[Landroid/widget/RadioButton;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    const/4 v15, 0x0

    #setter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mCaptureMode:I
    invoke-static {v14, v15}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$1302(Lcom/mediatek/engineermode/cameranew/AutoCalibration;I)I

    .line 183
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #calls: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->setCaptureLayout([I[Landroid/widget/RadioButton;)V
    invoke-static {v14, v11, v5}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$1400(Lcom/mediatek/engineermode/cameranew/AutoCalibration;[I[Landroid/widget/RadioButton;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    const/4 v15, 0x1

    #calls: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->setAfModeAccessble(Z)V
    invoke-static {v14, v15}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$1500(Lcom/mediatek/engineermode/cameranew/AutoCalibration;Z)V

    .line 222
    .end local v5           #buttons:[Landroid/widget/RadioButton;
    .end local v11           #layouts:[I
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfMode:I
    invoke-static {v14}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$800(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)I

    move-result v14

    if-nez v14, :cond_f

    .line 223
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfModeStatus:Z
    invoke-static {v14}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$1800(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 224
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    const/4 v15, 0x1

    #calls: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->statusChangesByAf(Z)V
    invoke-static {v14, v15}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$1900(Lcom/mediatek/engineermode/cameranew/AutoCalibration;Z)V

    .line 225
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    const/4 v15, 0x1

    #setter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfModeStatus:Z
    invoke-static {v14, v15}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$1802(Lcom/mediatek/engineermode/cameranew/AutoCalibration;Z)Z

    .line 234
    .end local v2           #afLayoutArr:[Landroid/view/View;
    .end local v3           #afRadioArr:[Landroid/widget/RadioButton;
    .end local v4           #arr$:[Landroid/widget/RadioButton;
    .end local v8           #changeAf:Z
    .end local v10           #i$:I
    .end local v12           #len$:I
    :cond_5
    :goto_4
    return-void

    .line 165
    .restart local v2       #afLayoutArr:[Landroid/view/View;
    .restart local v3       #afRadioArr:[Landroid/widget/RadioButton;
    .restart local v4       #arr$:[Landroid/widget/RadioButton;
    .restart local v8       #changeAf:Z
    .restart local v10       #i$:I
    .restart local v12       #len$:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfMode:I
    invoke-static {v14}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$800(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfFullScan:Landroid/widget/RadioButton;
    invoke-static {v14}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$500(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/RadioButton;

    move-result-object v14

    move-object/from16 v0, p1

    if-eq v0, v14, :cond_3

    .line 166
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    invoke-virtual {v14}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f06004d

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 167
    .restart local v6       #captureSizeArr:[Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .restart local v7       #captureSizeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_5
    array-length v14, v6

    if-ge v9, v14, :cond_7

    .line 169
    aget-object v14, v6, v9

    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 171
    :cond_7
    new-instance v1, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    const v15, 0x1090008

    invoke-direct {v1, v14, v15, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 173
    .restart local v1       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v14, 0x1090009

    invoke-virtual {v1, v14}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 174
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mNormalCaptureSize:Landroid/widget/Spinner;
    invoke-static {v14}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$900(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/Spinner;

    move-result-object v14

    invoke-virtual {v14, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto/16 :goto_2

    .line 186
    .end local v1           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v6           #captureSizeArr:[Ljava/lang/String;
    .end local v7           #captureSizeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v9           #i:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mMulFrameMode:Landroid/widget/RadioButton;
    invoke-static {v14}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$1200(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/RadioButton;

    move-result-object v14

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_9

    .line 187
    const/4 v14, 0x3

    new-array v11, v14, [I

    fill-array-data v11, :array_1

    .line 188
    .restart local v11       #layouts:[I
    const/4 v14, 0x2

    new-array v5, v14, [Landroid/widget/RadioButton;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mVideoCliplMode:Landroid/widget/RadioButton;
    invoke-static {v15}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$1100(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/RadioButton;

    move-result-object v15

    aput-object v15, v5, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mNormalMode:Landroid/widget/RadioButton;
    invoke-static {v15}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$1000(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/RadioButton;

    move-result-object v15

    aput-object v15, v5, v14

    .line 189
    .restart local v5       #buttons:[Landroid/widget/RadioButton;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    const/4 v15, 0x1

    #setter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mCaptureMode:I
    invoke-static {v14, v15}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$1302(Lcom/mediatek/engineermode/cameranew/AutoCalibration;I)I

    .line 190
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #calls: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->setCaptureLayout([I[Landroid/widget/RadioButton;)V
    invoke-static {v14, v11, v5}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$1400(Lcom/mediatek/engineermode/cameranew/AutoCalibration;[I[Landroid/widget/RadioButton;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    const/4 v15, 0x1

    #calls: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->setAfModeAccessble(Z)V
    invoke-static {v14, v15}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$1500(Lcom/mediatek/engineermode/cameranew/AutoCalibration;Z)V

    goto/16 :goto_3

    .line 193
    .end local v5           #buttons:[Landroid/widget/RadioButton;
    .end local v11           #layouts:[I
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mVideoCliplMode:Landroid/widget/RadioButton;
    invoke-static {v14}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$1100(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/RadioButton;

    move-result-object v14

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_a

    .line 194
    const/4 v14, 0x3

    new-array v11, v14, [I

    fill-array-data v11, :array_2

    .line 195
    .restart local v11       #layouts:[I
    const/4 v14, 0x2

    new-array v5, v14, [Landroid/widget/RadioButton;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mNormalMode:Landroid/widget/RadioButton;
    invoke-static {v15}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$1000(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/RadioButton;

    move-result-object v15

    aput-object v15, v5, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mMulFrameMode:Landroid/widget/RadioButton;
    invoke-static {v15}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$1200(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/RadioButton;

    move-result-object v15

    aput-object v15, v5, v14

    .line 196
    .restart local v5       #buttons:[Landroid/widget/RadioButton;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    const/4 v15, 0x2

    #setter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mCaptureMode:I
    invoke-static {v14, v15}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$1302(Lcom/mediatek/engineermode/cameranew/AutoCalibration;I)I

    .line 197
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #calls: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->setCaptureLayout([I[Landroid/widget/RadioButton;)V
    invoke-static {v14, v11, v5}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$1400(Lcom/mediatek/engineermode/cameranew/AutoCalibration;[I[Landroid/widget/RadioButton;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfAuto:Landroid/widget/RadioButton;
    invoke-static {v14}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$300(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/RadioButton;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 200
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    const/4 v15, 0x0

    #calls: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->setAfModeAccessble(Z)V
    invoke-static {v14, v15}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$1500(Lcom/mediatek/engineermode/cameranew/AutoCalibration;Z)V

    goto/16 :goto_3

    .line 201
    .end local v5           #buttons:[Landroid/widget/RadioButton;
    .end local v11           #layouts:[I
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfAuto:Landroid/widget/RadioButton;
    invoke-static {v14}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$300(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/RadioButton;

    move-result-object v14

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_b

    .line 202
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    const/4 v15, 0x0

    #setter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfMode:I
    invoke-static {v14, v15}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$802(Lcom/mediatek/engineermode/cameranew/AutoCalibration;I)I

    .line 203
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    const/4 v15, 0x0

    #calls: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->setVisibleLayout([Landroid/view/View;[Landroid/view/View;)V
    invoke-static {v14, v2, v15}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$1600(Lcom/mediatek/engineermode/cameranew/AutoCalibration;[Landroid/view/View;[Landroid/view/View;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfAuto:Landroid/widget/RadioButton;
    invoke-static {v15}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$300(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/RadioButton;

    move-result-object v15

    #calls: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->setCheckedRadioGroup([Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V
    invoke-static {v14, v3, v15}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$1700(Lcom/mediatek/engineermode/cameranew/AutoCalibration;[Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    goto/16 :goto_3

    .line 205
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfBracket:Landroid/widget/RadioButton;
    invoke-static {v14}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$400(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/RadioButton;

    move-result-object v14

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_c

    .line 206
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    const/4 v15, 0x1

    #setter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfMode:I
    invoke-static {v14, v15}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$802(Lcom/mediatek/engineermode/cameranew/AutoCalibration;I)I

    .line 207
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    const/4 v15, 0x1

    new-array v15, v15, [Landroid/view/View;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    move-object/from16 v17, v0

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfBracketLayout:Landroid/widget/LinearLayout;
    invoke-static/range {v17 .. v17}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$000(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/LinearLayout;

    move-result-object v17

    aput-object v17, v15, v16

    #calls: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->setVisibleLayout([Landroid/view/View;[Landroid/view/View;)V
    invoke-static {v14, v2, v15}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$1600(Lcom/mediatek/engineermode/cameranew/AutoCalibration;[Landroid/view/View;[Landroid/view/View;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfBracket:Landroid/widget/RadioButton;
    invoke-static {v15}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$400(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/RadioButton;

    move-result-object v15

    #calls: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->setCheckedRadioGroup([Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V
    invoke-static {v14, v3, v15}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$1700(Lcom/mediatek/engineermode/cameranew/AutoCalibration;[Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    goto/16 :goto_3

    .line 209
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfFullScan:Landroid/widget/RadioButton;
    invoke-static {v14}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$500(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/RadioButton;

    move-result-object v14

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_d

    .line 210
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    const/4 v15, 0x2

    #setter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfMode:I
    invoke-static {v14, v15}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$802(Lcom/mediatek/engineermode/cameranew/AutoCalibration;I)I

    .line 211
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    const/4 v15, 0x1

    new-array v15, v15, [Landroid/view/View;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    move-object/from16 v17, v0

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfFullScanSetLayout:Landroid/widget/LinearLayout;
    invoke-static/range {v17 .. v17}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$200(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/LinearLayout;

    move-result-object v17

    aput-object v17, v15, v16

    #calls: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->setVisibleLayout([Landroid/view/View;[Landroid/view/View;)V
    invoke-static {v14, v2, v15}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$1600(Lcom/mediatek/engineermode/cameranew/AutoCalibration;[Landroid/view/View;[Landroid/view/View;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfFullScan:Landroid/widget/RadioButton;
    invoke-static {v15}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$500(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/RadioButton;

    move-result-object v15

    #calls: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->setCheckedRadioGroup([Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V
    invoke-static {v14, v3, v15}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$1700(Lcom/mediatek/engineermode/cameranew/AutoCalibration;[Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    goto/16 :goto_3

    .line 213
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfThrough:Landroid/widget/RadioButton;
    invoke-static {v14}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$600(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/RadioButton;

    move-result-object v14

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_e

    .line 214
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    const/4 v15, 0x3

    #setter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfMode:I
    invoke-static {v14, v15}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$802(Lcom/mediatek/engineermode/cameranew/AutoCalibration;I)I

    .line 215
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    const/4 v15, 0x1

    new-array v15, v15, [Landroid/view/View;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    move-object/from16 v17, v0

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfThroughLayout:Landroid/widget/LinearLayout;
    invoke-static/range {v17 .. v17}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$100(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/LinearLayout;

    move-result-object v17

    aput-object v17, v15, v16

    #calls: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->setVisibleLayout([Landroid/view/View;[Landroid/view/View;)V
    invoke-static {v14, v2, v15}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$1600(Lcom/mediatek/engineermode/cameranew/AutoCalibration;[Landroid/view/View;[Landroid/view/View;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfThrough:Landroid/widget/RadioButton;
    invoke-static {v15}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$600(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/RadioButton;

    move-result-object v15

    #calls: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->setCheckedRadioGroup([Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V
    invoke-static {v14, v3, v15}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$1700(Lcom/mediatek/engineermode/cameranew/AutoCalibration;[Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    goto/16 :goto_3

    .line 217
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfContinuous:Landroid/widget/RadioButton;
    invoke-static {v14}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$700(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/RadioButton;

    move-result-object v14

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_4

    .line 218
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    const/4 v15, 0x4

    #setter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfMode:I
    invoke-static {v14, v15}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$802(Lcom/mediatek/engineermode/cameranew/AutoCalibration;I)I

    .line 219
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    const/4 v15, 0x0

    #calls: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->setVisibleLayout([Landroid/view/View;[Landroid/view/View;)V
    invoke-static {v14, v2, v15}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$1600(Lcom/mediatek/engineermode/cameranew/AutoCalibration;[Landroid/view/View;[Landroid/view/View;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfContinuous:Landroid/widget/RadioButton;
    invoke-static {v15}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$700(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Landroid/widget/RadioButton;

    move-result-object v15

    #calls: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->setCheckedRadioGroup([Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V
    invoke-static {v14, v3, v15}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$1700(Lcom/mediatek/engineermode/cameranew/AutoCalibration;[Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    goto/16 :goto_3

    .line 228
    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfModeStatus:Z
    invoke-static {v14}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$1800(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 229
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    const/4 v15, 0x0

    #calls: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->statusChangesByAf(Z)V
    invoke-static {v14, v15}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$1900(Lcom/mediatek/engineermode/cameranew/AutoCalibration;Z)V

    .line 230
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$1;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    const/4 v15, 0x0

    #setter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mAfModeStatus:Z
    invoke-static {v14, v15}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$1802(Lcom/mediatek/engineermode/cameranew/AutoCalibration;Z)Z

    goto/16 :goto_4

    .line 180
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 187
    :array_1
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 194
    :array_2
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
