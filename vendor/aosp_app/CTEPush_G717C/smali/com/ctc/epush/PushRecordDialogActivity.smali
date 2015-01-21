.class public Lcom/ctc/epush/PushRecordDialogActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lcom/ctc/epush/ad;

.field private c:Ljava/util/List;

.field private d:Landroid/content/Context;

.field private e:Lcom/ctc/c/n;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ctc/epush/PushRecordDialogActivity;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const v5, 0x7f060037

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lcom/ctc/epush/PushRecordDialogActivity;->requestWindowFeature(I)Z

    iput-object p0, p0, Lcom/ctc/epush/PushRecordDialogActivity;->d:Landroid/content/Context;

    new-instance v0, Lcom/ctc/c/n;

    invoke-direct {v0, p0}, Lcom/ctc/c/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ctc/epush/PushRecordDialogActivity;->e:Lcom/ctc/c/n;

    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/ctc/epush/PushRecordDialogActivity;->setContentView(I)V

    iget-object v0, p0, Lcom/ctc/epush/PushRecordDialogActivity;->e:Lcom/ctc/c/n;

    const-string v1, "pushAppJson"

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/ctc/c/n;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "PushRecordDialogActivity--->: appJson:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2}, Lcom/ctc/b/e;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/ctc/a/c;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ctc/epush/PushRecordDialogActivity;->d:Landroid/content/Context;

    invoke-virtual {p0, v5}, Lcom/ctc/epush/PushRecordDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_1
    const v0, 0x7f080038

    invoke-virtual {p0, v0}, Lcom/ctc/epush/PushRecordDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ctc/epush/PushRecordDialogActivity;->a:Landroid/widget/ListView;

    new-instance v0, Lcom/ctc/epush/ad;

    iget-object v1, p0, Lcom/ctc/epush/PushRecordDialogActivity;->c:Ljava/util/List;

    invoke-direct {v0, p0, p0, v1}, Lcom/ctc/epush/ad;-><init>(Lcom/ctc/epush/PushRecordDialogActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ctc/epush/PushRecordDialogActivity;->b:Lcom/ctc/epush/ad;

    iget-object v0, p0, Lcom/ctc/epush/PushRecordDialogActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ctc/epush/PushRecordDialogActivity;->b:Lcom/ctc/epush/ad;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/ctc/epush/PushRecordDialogActivity;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/ctc/epush/ac;

    invoke-direct {v1, p0}, Lcom/ctc/epush/ac;-><init>(Lcom/ctc/epush/PushRecordDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/ctc/a/c;->f()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ctc/epush/PushRecordDialogActivity;->c:Ljava/util/List;

    iget-object v0, p0, Lcom/ctc/epush/PushRecordDialogActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ctc/epush/PushRecordDialogActivity;->d:Landroid/content/Context;

    invoke-virtual {p0, v5}, Lcom/ctc/epush/PushRecordDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "keyCode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
