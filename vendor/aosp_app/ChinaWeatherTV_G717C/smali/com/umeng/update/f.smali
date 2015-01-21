.class public Lcom/umeng/update/f;
.super Ljava/lang/Object;
.source "UpdateInternal.java"

# interfaces
.implements Lcom/umeng/common/net/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/update/f$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Lcom/umeng/update/UmengDownloadListener;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Landroid/content/Context;

.field private i:Ljava/lang/String;

.field private j:Lcom/umeng/common/net/a;

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/umeng/update/f;->c:Lcom/umeng/update/UmengDownloadListener;

    .line 33
    iput-object v0, p0, Lcom/umeng/update/f;->d:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/umeng/update/f;->e:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/umeng/update/f;->f:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/umeng/update/f;->g:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/umeng/update/f;->h:Landroid/content/Context;

    .line 39
    iput-object v0, p0, Lcom/umeng/update/f;->i:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/umeng/update/f;->j:Lcom/umeng/common/net/a;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/update/f;->k:Z

    .line 45
    const-string v0, "delta_update"

    iput-object v0, p0, Lcom/umeng/update/f;->a:Ljava/lang/String;

    .line 46
    const-string v0, "update_normal"

    iput-object v0, p0, Lcom/umeng/update/f;->b:Ljava/lang/String;

    .line 47
    return-void
.end method

.method private a(Lcom/umeng/common/net/a;)V
    .locals 2
    .parameter

    .prologue
    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/umeng/update/c;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/umeng/common/net/a;->a(Z)V

    .line 91
    :cond_0
    invoke-static {}, Lcom/umeng/update/c;->e()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/umeng/common/net/a;->b(Z)V

    .line 93
    invoke-static {}, Lcom/umeng/update/c;->e()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/umeng/common/net/a;->c(Z)V

    .line 94
    iget-object v0, p0, Lcom/umeng/update/f;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/common/net/a;->a(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/umeng/update/f;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/common/net/a;->b(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Lcom/umeng/common/net/a;->a()V

    .line 97
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/update/f;->k:Z

    .line 102
    iget-object v0, p0, Lcom/umeng/update/f;->c:Lcom/umeng/update/UmengDownloadListener;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/umeng/update/f;->c:Lcom/umeng/update/UmengDownloadListener;

    invoke-interface {v0}, Lcom/umeng/update/UmengDownloadListener;->OnDownloadStart()V

    .line 105
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/umeng/update/f;->c:Lcom/umeng/update/UmengDownloadListener;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/umeng/update/f;->c:Lcom/umeng/update/UmengDownloadListener;

    invoke-interface {v0, p1}, Lcom/umeng/update/UmengDownloadListener;->OnDownloadUpdate(I)V

    .line 112
    :cond_0
    return-void
.end method

.method public a(IILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    packed-switch p1, :pswitch_data_0

    .line 130
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/update/f;->k:Z

    .line 131
    iget-object v0, p0, Lcom/umeng/update/f;->c:Lcom/umeng/update/UmengDownloadListener;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/umeng/update/f;->c:Lcom/umeng/update/UmengDownloadListener;

    invoke-interface {v0, p1, p3}, Lcom/umeng/update/UmengDownloadListener;->OnDownloadEnd(ILjava/lang/String;)V

    .line 134
    :cond_0
    return-void

    .line 124
    :pswitch_1
    invoke-virtual {p0}, Lcom/umeng/update/f;->d()V

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;ZLjava/io/File;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 165
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/umeng/update/UpdateDialogActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 167
    const-string v2, "response"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 168
    if-eqz p3, :cond_0

    .line 169
    const-string v2, "file"

    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :goto_0
    const-string v2, "force"

    invoke-static {}, Lcom/umeng/update/c;->c()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 174
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 175
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 177
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 178
    return-void

    .line 171
    :cond_0
    const-string v2, "file"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/update/UmengDownloadListener;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/umeng/update/f;->h:Landroid/content/Context;

    .line 52
    invoke-static {p1}, Lcom/umeng/common/b;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/update/f;->i:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/umeng/update/f;->d:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/umeng/update/f;->e:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lcom/umeng/update/f;->f:Ljava/lang/String;

    .line 58
    iput-object p5, p0, Lcom/umeng/update/f;->g:Ljava/lang/String;

    .line 60
    iput-object p6, p0, Lcom/umeng/update/f;->c:Lcom/umeng/update/UmengDownloadListener;

    .line 61
    return-void
.end method

.method public b(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;ZLjava/io/File;)Lcom/umeng/update/f$a;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 229
    invoke-static {p1}, Lcom/umeng/common/b;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 230
    invoke-virtual {p2, p1, p3}, Lcom/umeng/update/UpdateResponse;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v3

    .line 234
    if-eqz p3, :cond_0

    .line 235
    invoke-static {p1}, Lcom/umeng/common/Res;->getInstance(Landroid/content/Context;)Lcom/umeng/common/Res;

    move-result-object v0

    const-string v1, "UMDialog_InstallAPK"

    invoke-virtual {v0, v1}, Lcom/umeng/common/Res;->f(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 237
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    const/high16 v4, 0x1000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 239
    invoke-static {p4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "application/vnd.android.package-archive"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 254
    const/4 v5, 0x0

    const/high16 v6, 0x800

    invoke-static {p1, v5, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 256
    new-instance v5, Lcom/umeng/update/f$a;

    invoke-direct {v5, p0, p1}, Lcom/umeng/update/f$a;-><init>(Lcom/umeng/update/f;Landroid/content/Context;)V

    .line 257
    invoke-virtual {v5, v3}, Lcom/umeng/update/f$a;->d(Ljava/lang/CharSequence;)Lcom/umeng/update/f$a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/umeng/update/f$a;->b(Ljava/lang/CharSequence;)Lcom/umeng/update/f$a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/umeng/update/f$a;->a(Ljava/lang/CharSequence;)Lcom/umeng/update/f$a;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/umeng/update/f$a;->c(Ljava/lang/CharSequence;)Lcom/umeng/common/util/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/umeng/common/util/j;->a(Landroid/app/PendingIntent;)Lcom/umeng/common/util/j;

    move-result-object v0

    const v1, 0x108007d

    invoke-virtual {v0, v1}, Lcom/umeng/common/util/j;->a(I)Lcom/umeng/common/util/j;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/umeng/common/util/j;->b(Z)Lcom/umeng/common/util/j;

    .line 262
    return-object v5

    .line 242
    :cond_0
    invoke-static {p1}, Lcom/umeng/common/Res;->getInstance(Landroid/content/Context;)Lcom/umeng/common/Res;

    move-result-object v0

    const-string v1, "UMUpdateTitle"

    invoke-virtual {v0, v1}, Lcom/umeng/common/Res;->f(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 244
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/umeng/update/UpdateDialogActivity;

    invoke-direct {v0, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 245
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 246
    const-string v5, "response"

    invoke-virtual {v4, v5, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 247
    const-string v5, "file"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v5, "force"

    invoke-static {}, Lcom/umeng/update/c;->c()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 249
    invoke-virtual {v0, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 250
    const/high16 v4, 0x1400

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public b(I)V
    .locals 1
    .parameter

    .prologue
    .line 138
    packed-switch p1, :pswitch_data_0

    .line 149
    :goto_0
    :pswitch_0
    return-void

    .line 141
    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/update/f;->k:Z

    goto :goto_0

    .line 144
    :pswitch_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/update/f;->k:Z

    goto :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/umeng/update/f;->k:Z

    return v0
.end method

.method public c()V
    .locals 6

    .prologue
    .line 72
    new-instance v0, Lcom/umeng/common/net/a;

    iget-object v1, p0, Lcom/umeng/update/f;->h:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/update/f;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/umeng/update/f;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/umeng/update/f;->f:Ljava/lang/String;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/umeng/common/net/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/common/net/k;)V

    iput-object v0, p0, Lcom/umeng/update/f;->j:Lcom/umeng/common/net/a;

    .line 74
    iget-object v0, p0, Lcom/umeng/update/f;->j:Lcom/umeng/common/net/a;

    invoke-direct {p0, v0}, Lcom/umeng/update/f;->a(Lcom/umeng/common/net/a;)V

    .line 75
    return-void
.end method

.method public d()V
    .locals 6

    .prologue
    .line 81
    new-instance v0, Lcom/umeng/common/net/a;

    iget-object v1, p0, Lcom/umeng/update/f;->h:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/update/f;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/umeng/update/f;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/umeng/update/f;->d:Ljava/lang/String;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/umeng/common/net/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/common/net/k;)V

    iput-object v0, p0, Lcom/umeng/update/f;->j:Lcom/umeng/common/net/a;

    .line 83
    iget-object v0, p0, Lcom/umeng/update/f;->j:Lcom/umeng/common/net/a;

    invoke-direct {p0, v0}, Lcom/umeng/update/f;->a(Lcom/umeng/common/net/a;)V

    .line 84
    return-void
.end method
