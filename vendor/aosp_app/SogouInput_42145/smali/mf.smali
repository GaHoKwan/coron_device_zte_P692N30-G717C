.class public Lmf;
.super Lld;
.source "SourceFile"


# static fields
.field private static final a:[I


# instance fields
.field private a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lmf;->a:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x98t 0x3t 0xbt 0x7ft
        0xc4t 0x3t 0xbt 0x7ft
    .end array-data
.end method

.method constructor <init>(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;Lah;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lld;-><init>(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;Lah;)V

    .line 27
    iput-object p1, p0, Lmf;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    .line 29
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4
    .parameter

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Z

    .line 48
    packed-switch p1, :pswitch_data_0

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 50
    :pswitch_0
    invoke-virtual {p0}, Lmf;->a()Lah;

    move-result-object v0

    check-cast v0, Laz;

    .line 51
    iget-object v1, p0, Lmf;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0}, Laz;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lmf;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->aS:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->aS:I

    goto :goto_0

    .line 55
    :pswitch_1
    invoke-virtual {p0}, Lmf;->a()Lah;

    move-result-object v0

    invoke-virtual {v0}, Lah;->g()Ljava/lang/String;

    move-result-object v0

    .line 58
    :try_start_0
    const-string v1, "http://weixin.qq.com/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 61
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 62
    const-string v2, "com.tencent.mm"

    const-string v3, "com.tencent.mm.ui.qrcode.GetQRCodeInfoUI"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const/high16 v2, 0x4000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 68
    iget-object v2, p0, Lmf;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v2, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v1

    .line 94
    :try_start_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 95
    iget-object v0, p0, Lmf;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.android.browser"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_5

    .line 97
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 103
    :goto_1
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 104
    iget-object v1, p0, Lmf;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v1, v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 106
    :catch_1
    move-exception v0

    goto :goto_0

    .line 69
    :cond_1
    :try_start_2
    const-string v1, "sinaweibo://userinfo?uid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "http://weibo.cn/qr/userinfo?uid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    :cond_2
    iget-object v1, p0, Lmf;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-static {v1}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v1

    iget v2, v1, Lamo;->cy:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lamo;->cy:I

    .line 71
    const-string v1, "com.sina.weibo"

    invoke-virtual {p0, v1}, Lmf;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 72
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 74
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 75
    const-string v2, "com.sina.weibo"

    const-string v3, "com.sina.weibo.UserInfoActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const/high16 v2, 0x4000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 78
    iget-object v2, p0, Lmf;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v2, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->startActivity(Landroid/content/Intent;)V

    .line 79
    iget-object v1, p0, Lmf;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-static {v1}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v1

    iget v2, v1, Lamo;->cA:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lamo;->cA:I

    goto/16 :goto_0

    .line 81
    :cond_3
    const-string v1, "uid="

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://weibo.cn/qr/userinfo?uid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "uid="

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    :cond_4
    invoke-virtual {p0, v0}, Lmf;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 101
    :cond_5
    :try_start_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 48
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 118
    iget-object v0, p0, Lmf;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    move v1, v2

    .line 120
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 121
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 122
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 123
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v4, 0xff

    if-lt v0, v4, :cond_1

    .line 124
    const/4 v2, 0x1

    .line 127
    :cond_0
    return v2

    .line 120
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
