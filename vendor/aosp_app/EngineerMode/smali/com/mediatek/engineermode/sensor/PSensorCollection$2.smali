.class Lcom/mediatek/engineermode/sensor/PSensorCollection$2;
.super Ljava/lang/Object;
.source "PSensorCollection.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/sensor/PSensorCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/sensor/PSensorCollection;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/sensor/PSensorCollection;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection$2;->this$0:Lcom/mediatek/engineermode/sensor/PSensorCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 121
    const-string v1, "PSensorCollectionLog"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick button view is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection$2;->this$0:Lcom/mediatek/engineermode/sensor/PSensorCollection;

    #getter for: Lcom/mediatek/engineermode/sensor/PSensorCollection;->mClearButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/mediatek/engineermode/sensor/PSensorCollection;->access$000(Lcom/mediatek/engineermode/sensor/PSensorCollection;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection$2;->this$0:Lcom/mediatek/engineermode/sensor/PSensorCollection;

    #calls: Lcom/mediatek/engineermode/sensor/PSensorCollection;->clearData()V
    invoke-static {v0}, Lcom/mediatek/engineermode/sensor/PSensorCollection;->access$100(Lcom/mediatek/engineermode/sensor/PSensorCollection;)V

    .line 125
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection$2;->this$0:Lcom/mediatek/engineermode/sensor/PSensorCollection;

    #getter for: Lcom/mediatek/engineermode/sensor/PSensorCollection;->mCurrentIndex:I
    invoke-static {v0}, Lcom/mediatek/engineermode/sensor/PSensorCollection;->access$200(Lcom/mediatek/engineermode/sensor/PSensorCollection;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection$2;->this$0:Lcom/mediatek/engineermode/sensor/PSensorCollection;

    #getter for: Lcom/mediatek/engineermode/sensor/PSensorCollection;->mClearButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/mediatek/engineermode/sensor/PSensorCollection;->access$000(Lcom/mediatek/engineermode/sensor/PSensorCollection;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection$2;->this$0:Lcom/mediatek/engineermode/sensor/PSensorCollection;

    #getter for: Lcom/mediatek/engineermode/sensor/PSensorCollection;->mGetButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/mediatek/engineermode/sensor/PSensorCollection;->access$300(Lcom/mediatek/engineermode/sensor/PSensorCollection;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection$2;->this$0:Lcom/mediatek/engineermode/sensor/PSensorCollection;

    #calls: Lcom/mediatek/engineermode/sensor/PSensorCollection;->getData()V
    invoke-static {v0}, Lcom/mediatek/engineermode/sensor/PSensorCollection;->access$400(Lcom/mediatek/engineermode/sensor/PSensorCollection;)V

    .line 130
    iget-object v0, p0, Lcom/mediatek/engineermode/sensor/PSensorCollection$2;->this$0:Lcom/mediatek/engineermode/sensor/PSensorCollection;

    #getter for: Lcom/mediatek/engineermode/sensor/PSensorCollection;->mClearButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/mediatek/engineermode/sensor/PSensorCollection;->access$000(Lcom/mediatek/engineermode/sensor/PSensorCollection;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method
