.class Lcom/mediatek/engineermode/audio/AudioModeSetting$ValLevelItemSelectListener;
.super Ljava/lang/Object;
.source "AudioModeSetting.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/audio/AudioModeSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValLevelItemSelectListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;


# direct methods
.method private constructor <init>(Lcom/mediatek/engineermode/audio/AudioModeSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$ValLevelItemSelectListener;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/engineermode/audio/AudioModeSetting;Lcom/mediatek/engineermode/audio/AudioModeSetting$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/audio/AudioModeSetting$ValLevelItemSelectListener;-><init>(Lcom/mediatek/engineermode/audio/AudioModeSetting;)V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$ValLevelItemSelectListener;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    #setter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mLevelIndex:I
    invoke-static {v0, p3}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$002(Lcom/mediatek/engineermode/audio/AudioModeSetting;I)I

    .line 160
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$ValLevelItemSelectListener;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    #getter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mValueEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$500(Lcom/mediatek/engineermode/audio/AudioModeSetting;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$ValLevelItemSelectListener;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$ValLevelItemSelectListener;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    #getter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mData:[B
    invoke-static {v2}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$100(Lcom/mediatek/engineermode/audio/AudioModeSetting;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$ValLevelItemSelectListener;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    #getter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mCurrentMode:I
    invoke-static {v3}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$200(Lcom/mediatek/engineermode/audio/AudioModeSetting;)I

    move-result v3

    iget-object v4, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$ValLevelItemSelectListener;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    #getter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mTypeIndex:I
    invoke-static {v4}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$300(Lcom/mediatek/engineermode/audio/AudioModeSetting;)I

    move-result v4

    iget-object v5, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$ValLevelItemSelectListener;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    #getter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mLevelIndex:I
    invoke-static {v5}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$000(Lcom/mediatek/engineermode/audio/AudioModeSetting;)I

    move-result v5

    #calls: Lcom/mediatek/engineermode/audio/AudioModeSetting;->getValue([BIII)I
    invoke-static {v1, v2, v3, v4, v5}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$400(Lcom/mediatek/engineermode/audio/AudioModeSetting;[BIII)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$ValLevelItemSelectListener;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    #calls: Lcom/mediatek/engineermode/audio/AudioModeSetting;->setMaxVolEdit()V
    invoke-static {v0}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$600(Lcom/mediatek/engineermode/audio/AudioModeSetting;)V

    .line 163
    const-string v0, "EM/Audio_modesetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$ValLevelItemSelectListener;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    #getter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mCurrentMode:I
    invoke-static {v2}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$200(Lcom/mediatek/engineermode/audio/AudioModeSetting;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$ValLevelItemSelectListener;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    #getter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mTypeIndex:I
    invoke-static {v2}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$300(Lcom/mediatek/engineermode/audio/AudioModeSetting;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/audio/AudioModeSetting$ValLevelItemSelectListener;->this$0:Lcom/mediatek/engineermode/audio/AudioModeSetting;

    #getter for: Lcom/mediatek/engineermode/audio/AudioModeSetting;->mLevelIndex:I
    invoke-static {v2}, Lcom/mediatek/engineermode/audio/AudioModeSetting;->access$000(Lcom/mediatek/engineermode/audio/AudioModeSetting;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v0, "EM/Audio_modesetting"

    const-string v1, "noting selected."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void
.end method
