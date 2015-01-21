.class Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$3;
.super Ljava/lang/Object;
.source "TouchScreenSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$3;->this$0:Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 157
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$3;->this$0:Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;

    #setter for: Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->mModeIndex:I
    invoke-static {v0, p3}, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->access$002(Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;I)I

    .line 158
    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$3;->this$0:Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;

    #getter for: Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->mEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->access$300(Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$3;->this$0:Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;

    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$3;->this$0:Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;

    #getter for: Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->mCategory:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->access$100(Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$3;->this$0:Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;

    #getter for: Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->mModeIndex:I
    invoke-static {v3}, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->access$000(Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$SpinnerData;

    iget-object v0, v0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$SpinnerData;->mFullPath:Ljava/lang/String;

    #calls: Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->getFileValue(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->access$200(Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
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
    .line 162
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$3;->this$0:Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->mModeIndex:I
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->access$002(Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;I)I

    .line 163
    return-void
.end method
