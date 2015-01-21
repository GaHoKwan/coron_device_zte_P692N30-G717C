.class public Lcom/farben/faq/f/a;
.super Ljava/lang/Thread;


# static fields
.field private static c:Ljava/lang/String;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/farben/faq/f/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/farben/faq/f/a;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/farben/faq/f/a;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/farben/faq/f/a;->b:Landroid/os/Handler;

    return-void
.end method

.method private a()Z
    .locals 5

    const/4 v1, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/farben/faq/f/a;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/farben/faq/common/e;->b(Landroid/app/Activity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Lcom/farben/faq/c/b;

    iget-object v3, p0, Lcom/farben/faq/f/a;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/farben/faq/c/b;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/farben/faq/f/a;->a:Landroid/app/Activity;

    invoke-virtual {v2, v0, v3}, Lcom/farben/faq/c/b;->a(Ljava/util/List;Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_0
    sget-object v2, Lcom/farben/faq/ListActivity;->b:Landroid/os/Handler;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return v0

    :catch_0
    move-exception v0

    move-object v2, v0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/farben/faq/f/a;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private b()Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/farben/faq/f/a;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/farben/faq/common/e;->c(Landroid/app/Activity;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Lcom/farben/faq/c/a;

    iget-object v4, p0, Lcom/farben/faq/f/a;->a:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lcom/farben/faq/c/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Lcom/farben/faq/c/a;->a(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v2, Lcom/farben/faq/TypeListAct;->a:Landroid/os/Handler;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/farben/faq/f/a;->c:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/farben/faq/common/h;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method private c()Z
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/farben/faq/f/a;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/farben/faq/common/e;->a(Landroid/app/Activity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/farben/faq/c/e;

    iget-object v3, p0, Lcom/farben/faq/f/a;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/farben/faq/c/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/farben/faq/c/e;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Lcom/farben/faq/c/e;->a(Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    sget-object v1, Lcom/farben/faq/SearchKeyAct;->a:Landroid/os/Handler;

    if-eqz v1, :cond_1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return v0

    :catch_0
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5173\u952e\u8bcd\u66f4\u65b0\u5931\u8d25\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/farben/faq/f/a;->c:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/farben/faq/common/h;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private d()Z
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/farben/faq/f/a;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/farben/faq/common/e;->e(Landroid/app/Activity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/farben/faq/c/d;

    iget-object v3, p0, Lcom/farben/faq/f/a;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/farben/faq/c/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/farben/faq/c/d;->b(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u70b9\u51fb\u7387\u66f4\u65b0\u5931\u8d25\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/farben/faq/f/a;->c:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/farben/faq/common/h;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private e()I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/farben/faq/f/a;->a:Landroid/app/Activity;

    const-string v2, "title"

    invoke-static {v1, v2}, Lcom/farben/faq/common/e;->a(Landroid/app/Activity;Ljava/lang/String;)Lcom/farben/faq/b/e;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/farben/faq/b/e;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Lcom/farben/faq/c/d;

    iget-object v3, p0, Lcom/farben/faq/f/a;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/farben/faq/c/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/farben/faq/c/d;->a(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6807\u9898\u66f4\u65b0\u5931\u8d25\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/farben/faq/f/a;->c:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/farben/faq/common/h;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/farben/faq/f/a;->a:Landroid/app/Activity;

    const-string v1, "firstLogin"

    invoke-static {v0, v1}, Lcom/farben/faq/common/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/farben/faq/f/a;->b:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string v1, "\u6807\u9898\u66f4\u65b0\u5f00\u59cb"

    sget-object v2, Lcom/farben/faq/f/a;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/farben/faq/common/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/farben/faq/f/a;->e()I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\u6807\u9898\u66f4\u65b0\u6210\u529f"

    sget-object v2, Lcom/farben/faq/f/a;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/farben/faq/common/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/farben/faq/f/a;->a:Landroid/app/Activity;

    const-string v1, "firstLogin"

    const-string v2, "ON"

    invoke-static {v0, v1, v2}, Lcom/farben/faq/common/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "\u6807\u9898\u66f4\u65b0\u7ed3\u675f"

    sget-object v1, Lcom/farben/faq/f/a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/farben/faq/common/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/farben/faq/f/a;->b:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string v0, "\u70b9\u51fb\u7387\u66f4\u65b0\u5f00\u59cb"

    sget-object v1, Lcom/farben/faq/f/a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/farben/faq/common/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/farben/faq/f/a;->d()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "\u70b9\u51fb\u7387\u66f4\u65b0\u5931\u8d25"

    sget-object v1, Lcom/farben/faq/f/a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/farben/faq/common/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v0, "\u70b9\u51fb\u7387\u66f4\u65b0\u7ed3\u675f"

    sget-object v1, Lcom/farben/faq/f/a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/farben/faq/common/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/farben/faq/f/a;->b:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string v0, "\u5173\u952e\u8bcd\u66f4\u65b0\u5f00\u59cb"

    sget-object v1, Lcom/farben/faq/f/a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/farben/faq/common/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/farben/faq/f/a;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\u5173\u952e\u8bcd\u66f4\u65b0\u6210\u529f"

    sget-object v1, Lcom/farben/faq/f/a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/farben/faq/common/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string v0, "\u5173\u952e\u8bcd\u66f4\u65b0\u7ed3\u675f"

    sget-object v1, Lcom/farben/faq/f/a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/farben/faq/common/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u5206\u7c7b\u4fe1\u606f\u66f4\u65b0\u5f00\u59cb"

    sget-object v1, Lcom/farben/faq/f/a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/farben/faq/common/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/farben/faq/f/a;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "\u5206\u7c7b\u4fe1\u606f\u66f4\u65b0\u6210\u529f"

    sget-object v1, Lcom/farben/faq/f/a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/farben/faq/common/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const-string v0, "\u5206\u7c7b\u4fe1\u606f\u66f4\u65b0\u7ed3\u675f"

    sget-object v1, Lcom/farben/faq/f/a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/farben/faq/common/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u9891\u9053\u5e7f\u544a\u66f4\u65b0\u5f00\u59cb"

    sget-object v1, Lcom/farben/faq/f/a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/farben/faq/common/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/farben/faq/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "\u9891\u9053\u5e7f\u544a\u66f4\u65b0\u6210\u529f"

    sget-object v1, Lcom/farben/faq/f/a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/farben/faq/common/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const-string v0, "\u9891\u9053\u5e7f\u544a\u66f4\u65b0\u7ed3\u675f"

    sget-object v1, Lcom/farben/faq/f/a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/farben/faq/common/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/farben/faq/f/a;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/farben/faq/common/a;->b(Landroid/app/Activity;)V

    const-string v0, "\u672c\u6b21\u66f4\u65b0\u7ed3\u675f\uff01"

    sget-object v1, Lcom/farben/faq/f/a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/farben/faq/common/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void

    :cond_1
    if-ne v1, v3, :cond_2

    const-string v0, "\u6ca1\u6709\u53ef\u4ee5\u66f4\u65b0\u7684\u6570 \u636e"

    sget-object v1, Lcom/farben/faq/f/a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/farben/faq/common/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/farben/faq/c/d;

    iget-object v1, p0, Lcom/farben/faq/f/a;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/farben/faq/c/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/farben/faq/c/d;->a()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/farben/faq/f/a;->b:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4

    :cond_2
    if-ne v1, v4, :cond_0

    iget-object v0, p0, Lcom/farben/faq/f/a;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x7a

    iput v1, v0, Landroid/os/Message;->arg1:I

    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/farben/faq/f/a;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string v0, "\u6807\u9898\u66f4\u65b0\u5931\u8d25"

    sget-object v1, Lcom/farben/faq/f/a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/farben/faq/common/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    const-string v0, "\u70b9\u51fb\u7387\u66f4\u65b0\u6210\u529f"

    sget-object v1, Lcom/farben/faq/f/a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/farben/faq/common/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "\u5173\u952e\u8bcd\u66f4\u65b0\u5931\u8d25"

    sget-object v1, Lcom/farben/faq/f/a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/farben/faq/common/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    const-string v0, "\u5206\u7c7b\u4fe1\u606f\u66f4\u65b0\u5931\u8d25"

    sget-object v1, Lcom/farben/faq/f/a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/farben/faq/common/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    const-string v0, "\u9891\u9053\u5e7f\u544a\u66f4\u65b0\u5931\u8d25"

    sget-object v1, Lcom/farben/faq/f/a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/farben/faq/common/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method
