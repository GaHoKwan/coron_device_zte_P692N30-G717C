.class Lcom/mediatek/lbs/em/LbsMisc$1;
.super Ljava/lang/Object;
.source "LbsMisc.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/lbs/em/LbsMisc;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/lbs/em/LbsMisc;


# direct methods
.method constructor <init>(Lcom/mediatek/lbs/em/LbsMisc;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsMisc$1;->this$0:Lcom/mediatek/lbs/em/LbsMisc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 96
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMisc$1;->this$0:Lcom/mediatek/lbs/em/LbsMisc;

    #getter for: Lcom/mediatek/lbs/em/LbsMisc;->mSpinnerServer:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsMisc;->access$000(Lcom/mediatek/lbs/em/LbsMisc;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v1

    long-to-int v0, v1

    .line 97
    .local v0, id:I
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMisc$1;->this$0:Lcom/mediatek/lbs/em/LbsMisc;

    #getter for: Lcom/mediatek/lbs/em/LbsMisc;->mEditTextIp:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsMisc;->access$100(Lcom/mediatek/lbs/em/LbsMisc;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/lbs/em/LbsMisc$1;->this$0:Lcom/mediatek/lbs/em/LbsMisc;

    iget-object v2, v2, Lcom/mediatek/lbs/em/LbsMisc;->SERVER_IP:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMisc$1;->this$0:Lcom/mediatek/lbs/em/LbsMisc;

    #getter for: Lcom/mediatek/lbs/em/LbsMisc;->mEditTextPort:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/mediatek/lbs/em/LbsMisc;->access$200(Lcom/mediatek/lbs/em/LbsMisc;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/lbs/em/LbsMisc$1;->this$0:Lcom/mediatek/lbs/em/LbsMisc;

    iget-object v2, v2, Lcom/mediatek/lbs/em/LbsMisc;->SERVER_PORT:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 99
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
