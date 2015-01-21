.class Lcom/mediatek/lbs/em/LbsMap$5;
.super Ljava/lang/Object;
.source "LbsMap.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/lbs/em/LbsMap;->openDialogAddr()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/lbs/em/LbsMap;

.field final synthetic val$editText_addr:Landroid/widget/EditText;

.field final synthetic val$spinner:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/mediatek/lbs/em/LbsMap;Landroid/widget/Spinner;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsMap$5;->this$0:Lcom/mediatek/lbs/em/LbsMap;

    iput-object p2, p0, Lcom/mediatek/lbs/em/LbsMap$5;->val$spinner:Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/mediatek/lbs/em/LbsMap$5;->val$editText_addr:Landroid/widget/EditText;

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
    .line 273
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMap$5;->this$0:Lcom/mediatek/lbs/em/LbsMap;

    iget-object v1, v1, Lcom/mediatek/lbs/em/LbsMap;->mLocationInfo:[Lcom/mediatek/lbs/em/LocationInfo;

    iget-object v2, p0, Lcom/mediatek/lbs/em/LbsMap$5;->val$spinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    aget-object v1, v1, v2

    iget-object v0, v1, Lcom/mediatek/lbs/em/LocationInfo;->country:Ljava/lang/String;

    .line 274
    .local v0, country:Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsMap$5;->val$editText_addr:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 275
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
    .line 277
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
