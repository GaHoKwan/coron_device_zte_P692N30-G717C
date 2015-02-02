.class Lcom/mediatek/engineermode/cameranew/AutoCalibration$3;
.super Ljava/lang/Object;
.source "AutoCalibration.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/cameranew/AutoCalibration;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 291
    iput-object p1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$3;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 4
    .parameter "dialog"
    .parameter "which"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 295
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$3;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mMulISOFlags:[Z
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$2100(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)[Z

    move-result-object v1

    aput-boolean p3, v1, p2

    .line 296
    if-nez p2, :cond_1

    .line 297
    if-eqz p3, :cond_3

    .line 298
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$3;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mMulISOFlags:[Z
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$2100(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)[Z

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 299
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$3;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mMulISOFlags:[Z
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$2100(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)[Z

    move-result-object v1

    aput-boolean v3, v1, v0

    move-object v1, p1

    .line 301
    check-cast v1, Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 298
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 303
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$3;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mMulISOFlags:[Z
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$2100(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)[Z

    move-result-object v1

    aput-boolean v2, v1, v0

    move-object v1, p1

    .line 304
    check-cast v1, Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    goto :goto_1

    .line 308
    .end local v0           #i:I
    :cond_1
    if-ne p2, v3, :cond_2

    .line 309
    if-eqz p3, :cond_3

    .line 310
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$3;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mMulISOFlags:[Z
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$2100(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)[Z

    move-result-object v1

    aput-boolean v2, v1, v2

    move-object v1, p1

    .line 311
    check-cast v1, Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 312
    const/4 v0, 0x2

    .restart local v0       #i:I
    :goto_2
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$3;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mMulISOFlags:[Z
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$2100(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)[Z

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 313
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$3;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mMulISOFlags:[Z
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$2100(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)[Z

    move-result-object v1

    aput-boolean v3, v1, v0

    move-object v1, p1

    .line 314
    check-cast v1, Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 318
    .end local v0           #i:I
    :cond_2
    if-eqz p3, :cond_4

    .line 319
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$3;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mMulISOFlags:[Z
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$2100(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)[Z

    move-result-object v1

    aput-boolean v2, v1, v2

    .line 320
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 326
    :cond_3
    :goto_3
    return-void

    .line 322
    .restart local p1
    :cond_4
    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/AutoCalibration$3;->this$0:Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    #getter for: Lcom/mediatek/engineermode/cameranew/AutoCalibration;->mMulISOFlags:[Z
    invoke-static {v1}, Lcom/mediatek/engineermode/cameranew/AutoCalibration;->access$2100(Lcom/mediatek/engineermode/cameranew/AutoCalibration;)[Z

    move-result-object v1

    aput-boolean v2, v1, v3

    .line 323
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    goto :goto_3
.end method
