.class public final Llr;
.super Lld;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;

.field private static final a:[I

.field public static b:Ljava/lang/String;


# instance fields
.field private a:Landroid/os/Handler;

.field private a:Lau;

.field private a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

.field private a:Lkq;

.field private a:Lkr;

.field private final a:Z

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f0b0397

    aput v2, v0, v1

    sput-object v0, Llr;->a:[I

    .line 59
    const-string v0, "total"

    sput-object v0, Llr;->a:Ljava/lang/String;

    .line 60
    const-string v0, "downloadsize"

    sput-object v0, Llr;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;Lah;Landroid/os/Handler;Lkq;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lld;-><init>(Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;Lah;)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Llr;->a:Z

    .line 61
    const-string v0, ""

    iput-object v0, p0, Llr;->c:Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Llr;->a:Lkq;

    .line 74
    iput-object p1, p0, Llr;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    .line 75
    iput-object p3, p0, Llr;->a:Landroid/os/Handler;

    .line 76
    iput-object p4, p0, Llr;->a:Lkq;

    .line 77
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouAppApplication;->a:Landroid/content/Context;

    invoke-static {v0}, Lkr;->a(Landroid/content/Context;)Lkr;

    move-result-object v0

    iput-object v0, p0, Llr;->a:Lkr;

    .line 78
    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 241
    iget-object v1, p0, Llr;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    move v1, v0

    .line 244
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 245
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 246
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 251
    :goto_1
    return-object v0

    .line 244
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 251
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x0

    .line 92
    invoke-virtual {p0}, Llr;->a()Lah;

    move-result-object v0

    check-cast v0, Lau;

    iput-object v0, p0, Llr;->a:Lau;

    .line 93
    iget-object v0, p0, Llr;->a:Lau;

    invoke-virtual {v0}, Lau;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llr;->d:Ljava/lang/String;

    .line 95
    sput-boolean v5, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a:Z

    .line 96
    const-string v1, "http://10.1.60.32/web/index.php?"

    .line 97
    iget-object v0, p0, Llr;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llr;->d:Ljava/lang/String;

    const-string v2, ".apk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Llr;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->F()Ljava/lang/String;

    move-result-object v0

    .line 99
    sget-object v2, Laox;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    if-eqz v0, :cond_0

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Llr;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "un="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Llr;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llr;->d:Ljava/lang/String;

    .line 105
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 192
    :cond_1
    :goto_0
    return-void

    .line 107
    :pswitch_0
    iget-object v0, p0, Llr;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->aS:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->aS:I

    .line 108
    iget-object v0, p0, Llr;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    iget-object v1, p0, Llr;->a:Lau;

    invoke-virtual {v1}, Lau;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :pswitch_1
    iget-object v0, p0, Llr;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->bx:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->bx:I

    .line 112
    iget-boolean v0, p0, Llr;->b:Z

    if-eqz v0, :cond_6

    .line 113
    invoke-static {}, Laox;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 114
    iget-object v0, p0, Llr;->a:Landroid/os/Handler;

    const/16 v1, 0xd8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 117
    :cond_2
    iget-object v0, p0, Llr;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Laox;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 119
    iget-object v0, p0, Llr;->a:Landroid/os/Handler;

    const/16 v1, 0xd2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 122
    :cond_3
    const-string v0, "=======press download button======="

    invoke-direct {p0, v0}, Llr;->f(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Llr;->a:Lkq;

    if-eqz v0, :cond_4

    iget-object v0, p0, Llr;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    iget-object v1, p0, Llr;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Ljava/lang/String;)Lku;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 130
    iget-object v0, p0, Llr;->a:Lkr;

    iget-object v1, p0, Llr;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lkr;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 131
    iget-object v0, p0, Llr;->a:Lkr;

    iget-object v1, p0, Llr;->a:Lkq;

    iget-object v2, p0, Llr;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    iget-object v3, p0, Llr;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Ljava/lang/String;)Lku;

    move-result-object v2

    iget-object v3, p0, Llr;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Lkr;->a(Lkq;Lku;Landroid/os/Handler;)V

    .line 145
    :cond_4
    :goto_1
    iget-object v0, p0, Llr;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->cz:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->cz:I

    goto/16 :goto_0

    .line 135
    :cond_5
    iget-object v0, p0, Llr;->a:Lkr;

    iget-object v1, p0, Llr;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lkr;->a(Ljava/lang/String;)Lko;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_4

    .line 137
    iget-object v1, p0, Llr;->a:Lkq;

    invoke-virtual {v0, v1}, Lko;->a(Lkq;)V

    .line 138
    invoke-virtual {v0}, Lko;->a()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 139
    invoke-virtual {v0}, Lko;->a()V

    goto :goto_1

    .line 147
    :cond_6
    iget-object v0, p0, Llr;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Llr;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 152
    :pswitch_2
    iget-object v0, p0, Llr;->a:Lkr;

    iget-object v1, p0, Llr;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lkr;->a(Ljava/lang/String;)Lko;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_7

    .line 156
    invoke-virtual {v0}, Lko;->f()V

    .line 157
    iget-object v0, p0, Llr;->a:Landroid/os/Handler;

    const/16 v1, 0xdf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 161
    :cond_7
    iget-object v0, p0, Llr;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    iget-object v1, p0, Llr;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Ljava/lang/String;)Lku;

    move-result-object v0

    iget v0, v0, Lku;->b:I

    if-ne v0, v6, :cond_1

    .line 162
    iget-object v0, p0, Llr;->a:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Llr;->a:Landroid/os/Handler;

    const/16 v1, 0xe2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 169
    :pswitch_3
    iget-object v0, p0, Llr;->a:Lkr;

    iget-object v1, p0, Llr;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lkr;->a(Ljava/lang/String;)Lko;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {v0}, Lko;->b()V

    goto/16 :goto_0

    .line 177
    :pswitch_4
    iget-object v0, p0, Llr;->a:Lkr;

    iget-object v1, p0, Llr;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lkr;->a(Ljava/lang/String;)Lko;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_8

    .line 179
    invoke-virtual {v0}, Lko;->a()V

    goto/16 :goto_0

    .line 182
    :cond_8
    iget-object v0, p0, Llr;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    iget-object v1, p0, Llr;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Ljava/lang/String;)Lku;

    move-result-object v0

    iget v0, v0, Lku;->b:I

    if-ne v0, v6, :cond_1

    .line 183
    iget-object v0, p0, Llr;->a:Lkq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Llr;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    iget-object v1, p0, Llr;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Ljava/lang/String;)Lku;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Llr;->a:Lkr;

    iget-object v1, p0, Llr;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lkr;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 185
    iget-object v0, p0, Llr;->a:Lkr;

    iget-object v1, p0, Llr;->a:Lkq;

    iget-object v2, p0, Llr;->a:Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;

    iget-object v3, p0, Llr;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sohu/inputmethod/dimensionalbarcode/result/ResultActivity;->a(Ljava/lang/String;)Lku;

    move-result-object v2

    iget-object v3, p0, Llr;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Lkr;->a(Lkq;Lku;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-boolean p1, p0, Llr;->b:Z

    .line 212
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 219
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 220
    const/4 v1, 0x0

    .line 222
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 228
    :goto_0
    if-eqz v1, :cond_0

    .line 229
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 230
    invoke-virtual {p0, v2}, Llr;->a(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 231
    if-eqz v2, :cond_0

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-lt v2, v1, :cond_0

    .line 236
    :goto_1
    return v0

    .line 224
    :catch_0
    move-exception v2

    .line 226
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 236
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Llr;->c:Ljava/lang/String;

    .line 216
    return-void
.end method
