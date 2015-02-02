.class Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread$1;
.super Ljava/lang/Object;
.source "SDLogActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;)V
    .locals 0
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread$1;->this$1:Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 352
    iget-object v0, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread$1;->this$1:Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;

    iget-object v0, v0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;->this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;

    #getter for: Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mToggleButton:Landroid/widget/ToggleButton;
    invoke-static {v0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->access$200(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 353
    iget-object v0, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread$1;->this$1:Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;

    iget-object v0, v0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;->this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;

    #setter for: Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mSelectedIndex:I
    invoke-static {v0, v4}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->access$902(Lcom/mediatek/engineermode/sdtest/SDLogActivity;I)I

    .line 354
    iget-object v0, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread$1;->this$1:Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;

    iget-object v0, v0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;->this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;

    #getter for: Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mLVChooseStorage:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->access$1200(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v0, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread$1;->this$1:Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;

    iget-object v2, v0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;->this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;

    iget-object v0, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread$1;->this$1:Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;

    iget-object v0, v0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;->this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;

    #calls: Lcom/mediatek/engineermode/sdtest/SDLogActivity;->getAvailStorageTags()Ljava/util/List;
    invoke-static {v0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->access$1000(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread$1;->this$1:Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;

    iget-object v3, v3, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;->this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;

    #getter for: Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mSelectedIndex:I
    invoke-static {v3}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->access$900(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/mediatek/engineermode/sdtest/SDLogActivity;->constructAdapter(Ljava/lang/String;)Landroid/widget/ListAdapter;
    invoke-static {v2, v0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->access$1100(Lcom/mediatek/engineermode/sdtest/SDLogActivity;Ljava/lang/String;)Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 355
    iget-object v0, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread$1;->this$1:Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;

    iget-object v0, v0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;->this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;

    iget-object v1, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread$1;->this$1:Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;

    iget-object v1, v1, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;->this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;

    const v2, 0x7f080023

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 358
    return-void
.end method
