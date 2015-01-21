.class Lcom/isw/third/app/DotWebActivity$1;
.super Landroid/webkit/WebViewClient;
.source "DotWebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isw/third/app/DotWebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isw/third/app/DotWebActivity;


# direct methods
.method constructor <init>(Lcom/isw/third/app/DotWebActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/isw/third/app/DotWebActivity$1;->this$0:Lcom/isw/third/app/DotWebActivity;

    .line 153
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/isw/third/app/DotWebActivity$1;)Lcom/isw/third/app/DotWebActivity;
    .locals 1
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lcom/isw/third/app/DotWebActivity$1;->this$0:Lcom/isw/third/app/DotWebActivity;

    return-object v0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 7
    .parameter "view"
    .parameter "url"

    .prologue
    .line 173
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 175
    :try_start_0
    invoke-static {}, Lcom/isw/third/app/DotWebActivity;->access$0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "URL:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v4, p0, Lcom/isw/third/app/DotWebActivity$1;->this$0:Lcom/isw/third/app/DotWebActivity;

    invoke-virtual {v4}, Lcom/isw/third/app/DotWebActivity;->stopLoadUrlTask()V

    .line 177
    invoke-static {}, Lcom/isw/third/app/DotWebActivity;->access$0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "boolean"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    const-string v6, "WsClickServer/clicked"

    invoke-virtual {p2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 177
    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v4, p0, Lcom/isw/third/app/DotWebActivity$1;->this$0:Lcom/isw/third/app/DotWebActivity;

    iget-object v4, v4, Lcom/isw/third/app/DotWebActivity;->dotmatch:Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, dot:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v4, v0

    if-lt v3, v4, :cond_0

    .line 252
    .end local v0           #dot:[Ljava/lang/String;
    .end local v3           #i:I
    :goto_1
    return-void

    .line 181
    .restart local v0       #dot:[Ljava/lang/String;
    .restart local v3       #i:I
    :cond_0
    aget-object v1, v0, v3

    .line 182
    .local v1, dotmatchitem:Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 183
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/isw/third/app/DotWebActivity$1$1;

    invoke-direct {v5, p0, p2}, Lcom/isw/third/app/DotWebActivity$1$1;-><init>(Lcom/isw/third/app/DotWebActivity$1;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 245
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 248
    .end local v0           #dot:[Ljava/lang/String;
    .end local v1           #dotmatchitem:Ljava/lang/String;
    .end local v3           #i:I
    :catch_0
    move-exception v2

    .line 249
    .local v2, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/isw/third/app/DotWebActivity;->access$0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "e:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/isw/third/app/DotWebActivity$1;->this$0:Lcom/isw/third/app/DotWebActivity;

    invoke-virtual {v0}, Lcom/isw/third/app/DotWebActivity;->startLoadUrlTask()V

    .line 169
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    .line 157
    const-string v1, "mailto:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "geo:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "tel:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "wtai:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 159
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/isw/third/app/DotWebActivity$1;->this$0:Lcom/isw/third/app/DotWebActivity;

    invoke-virtual {v1, v0}, Lcom/isw/third/app/DotWebActivity;->startActivity(Landroid/content/Intent;)V

    .line 163
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 161
    :cond_1
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
