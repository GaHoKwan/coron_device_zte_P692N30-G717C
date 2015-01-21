.class Lcom/android/mipop/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/statistics/sdk/d;


# instance fields
.field final synthetic eT:Lcom/android/mipop/MIPopActivity;


# direct methods
.method constructor <init>(Lcom/android/mipop/MIPopActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mipop/c;->eT:Lcom/android/mipop/MIPopActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "mq"

    const-string v1, "onDestroy ----ZTEStatistics.sendCollectionInfo\tok!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/mipop/c;->eT:Lcom/android/mipop/MIPopActivity;

    iget-object v0, v0, Lcom/android/mipop/MIPopActivity;->mContext:Landroid/content/Context;

    const-string v1, "ZTEStatistics.sendCollectionInfo  ok!!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/zte/statistics/sdk/b;->clear()V

    :cond_0
    return-void
.end method
