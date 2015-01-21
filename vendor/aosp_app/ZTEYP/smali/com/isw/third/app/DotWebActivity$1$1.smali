.class Lcom/isw/third/app/DotWebActivity$1$1;
.super Ljava/lang/Object;
.source "DotWebActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isw/third/app/DotWebActivity$1;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isw/third/app/DotWebActivity$1;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/isw/third/app/DotWebActivity$1;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/isw/third/app/DotWebActivity$1$1;->this$1:Lcom/isw/third/app/DotWebActivity$1;

    iput-object p2, p0, Lcom/isw/third/app/DotWebActivity$1$1;->val$url:Ljava/lang/String;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v3, 0x1

    .line 186
    iget-object v0, p0, Lcom/isw/third/app/DotWebActivity$1$1;->val$url:Ljava/lang/String;

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 187
    .local v7, index:I
    iget-object v0, p0, Lcom/isw/third/app/DotWebActivity$1$1;->val$url:Ljava/lang/String;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 188
    .local v9, nextindex:I
    iget-object v0, p0, Lcom/isw/third/app/DotWebActivity$1$1;->val$url:Ljava/lang/String;

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/isw/third/app/DotWebActivity$1$1;->this$1:Lcom/isw/third/app/DotWebActivity$1;

    #getter for: Lcom/isw/third/app/DotWebActivity$1;->this$0:Lcom/isw/third/app/DotWebActivity;
    invoke-static {v0}, Lcom/isw/third/app/DotWebActivity$1;->access$0(Lcom/isw/third/app/DotWebActivity$1;)Lcom/isw/third/app/DotWebActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/isw/third/app/DotWebActivity$1$1;->val$url:Ljava/lang/String;

    add-int/lit8 v2, v7, 0x3

    invoke-virtual {v1, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isw/third/app/DotWebActivity;->id:Ljava/lang/String;

    .line 191
    :cond_0
    invoke-static {}, Lcom/isw/third/app/DotWebActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "id:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/isw/third/app/DotWebActivity$1$1;->this$1:Lcom/isw/third/app/DotWebActivity$1;

    #getter for: Lcom/isw/third/app/DotWebActivity$1;->this$0:Lcom/isw/third/app/DotWebActivity;
    invoke-static {v2}, Lcom/isw/third/app/DotWebActivity$1;->access$0(Lcom/isw/third/app/DotWebActivity$1;)Lcom/isw/third/app/DotWebActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/isw/third/app/DotWebActivity;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v10, ""

    .line 193
    .local v10, pointXML:Ljava/lang/String;
    const-string v11, ""

    .line 194
    .local v11, url:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/isw/third/app/DotWebActivity$1$1;->this$1:Lcom/isw/third/app/DotWebActivity$1;

    #getter for: Lcom/isw/third/app/DotWebActivity$1;->this$0:Lcom/isw/third/app/DotWebActivity;
    invoke-static {v1}, Lcom/isw/third/app/DotWebActivity$1;->access$0(Lcom/isw/third/app/DotWebActivity$1;)Lcom/isw/third/app/DotWebActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/isw/third/app/DotWebActivity;->dotMediaUrl:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isw/third/app/DotWebActivity$1$1;->this$1:Lcom/isw/third/app/DotWebActivity$1;

    #getter for: Lcom/isw/third/app/DotWebActivity$1;->this$0:Lcom/isw/third/app/DotWebActivity;
    invoke-static {v1}, Lcom/isw/third/app/DotWebActivity$1;->access$0(Lcom/isw/third/app/DotWebActivity$1;)Lcom/isw/third/app/DotWebActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/isw/third/app/DotWebActivity;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/isw/third/app/DotWebActivity$1$1;->this$1:Lcom/isw/third/app/DotWebActivity$1;

    #getter for: Lcom/isw/third/app/DotWebActivity$1;->this$0:Lcom/isw/third/app/DotWebActivity;
    invoke-static {v1}, Lcom/isw/third/app/DotWebActivity$1;->access$0(Lcom/isw/third/app/DotWebActivity$1;)Lcom/isw/third/app/DotWebActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/isw/third/app/DotWebActivity;->dmUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 197
    invoke-static {}, Lcom/isw/third/app/DotWebActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/isw/third/app/DotWebActivity$1$1;->this$1:Lcom/isw/third/app/DotWebActivity$1;

    #getter for: Lcom/isw/third/app/DotWebActivity$1;->this$0:Lcom/isw/third/app/DotWebActivity;
    invoke-static {v0}, Lcom/isw/third/app/DotWebActivity$1;->access$0(Lcom/isw/third/app/DotWebActivity$1;)Lcom/isw/third/app/DotWebActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/isw/third/app/DotWebActivity$1$1;->this$1:Lcom/isw/third/app/DotWebActivity$1;

    #getter for: Lcom/isw/third/app/DotWebActivity$1;->this$0:Lcom/isw/third/app/DotWebActivity;
    invoke-static {v1}, Lcom/isw/third/app/DotWebActivity$1;->access$0(Lcom/isw/third/app/DotWebActivity$1;)Lcom/isw/third/app/DotWebActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/isw/third/app/DotWebActivity;->imsi:Ljava/lang/String;

    invoke-static {v0, v11, v1}, Lcom/isw/android/corp/http/WinksHttpExp;->sendRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 200
    invoke-static {}, Lcom/isw/third/app/DotWebActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pointXML: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 203
    iget-object v0, p0, Lcom/isw/third/app/DotWebActivity$1$1;->this$1:Lcom/isw/third/app/DotWebActivity$1;

    #getter for: Lcom/isw/third/app/DotWebActivity$1;->this$0:Lcom/isw/third/app/DotWebActivity;
    invoke-static {v0}, Lcom/isw/third/app/DotWebActivity$1;->access$0(Lcom/isw/third/app/DotWebActivity$1;)Lcom/isw/third/app/DotWebActivity;

    move-result-object v0

    #calls: Lcom/isw/third/app/DotWebActivity;->parsePush(Ljava/lang/String;)Lcom/isw/android/corp/bean/PointBean;
    invoke-static {v10}, Lcom/isw/third/app/DotWebActivity;->access$1(Ljava/lang/String;)Lcom/isw/android/corp/bean/PointBean;

    move-result-object v1

    iput-object v1, v0, Lcom/isw/third/app/DotWebActivity;->pointbean:Lcom/isw/android/corp/bean/PointBean;

    .line 204
    invoke-static {}, Lcom/isw/third/app/DotWebActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/isw/third/app/DotWebActivity$1$1;->this$1:Lcom/isw/third/app/DotWebActivity$1;

    #getter for: Lcom/isw/third/app/DotWebActivity$1;->this$0:Lcom/isw/third/app/DotWebActivity;
    invoke-static {v2}, Lcom/isw/third/app/DotWebActivity$1;->access$0(Lcom/isw/third/app/DotWebActivity$1;)Lcom/isw/third/app/DotWebActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/isw/third/app/DotWebActivity;->pointbean:Lcom/isw/android/corp/bean/PointBean;

    iget-object v2, v2, Lcom/isw/android/corp/bean/PointBean;->imagePath:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    iget-object v2, p0, Lcom/isw/third/app/DotWebActivity$1$1;->this$1:Lcom/isw/third/app/DotWebActivity$1;

    #getter for: Lcom/isw/third/app/DotWebActivity$1;->this$0:Lcom/isw/third/app/DotWebActivity;
    invoke-static {v2}, Lcom/isw/third/app/DotWebActivity$1;->access$0(Lcom/isw/third/app/DotWebActivity$1;)Lcom/isw/third/app/DotWebActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/isw/third/app/DotWebActivity;->pointbean:Lcom/isw/android/corp/bean/PointBean;

    iget-object v2, v2, Lcom/isw/android/corp/bean/PointBean;->content:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/isw/third/app/DotWebActivity$1$1;->this$1:Lcom/isw/third/app/DotWebActivity$1;

    #getter for: Lcom/isw/third/app/DotWebActivity$1;->this$0:Lcom/isw/third/app/DotWebActivity;
    invoke-static {v0}, Lcom/isw/third/app/DotWebActivity$1;->access$0(Lcom/isw/third/app/DotWebActivity$1;)Lcom/isw/third/app/DotWebActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/isw/third/app/DotWebActivity$1$1;->this$1:Lcom/isw/third/app/DotWebActivity$1;

    #getter for: Lcom/isw/third/app/DotWebActivity$1;->this$0:Lcom/isw/third/app/DotWebActivity;
    invoke-static {v1}, Lcom/isw/third/app/DotWebActivity$1;->access$0(Lcom/isw/third/app/DotWebActivity$1;)Lcom/isw/third/app/DotWebActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/isw/third/app/DotWebActivity;->id:Ljava/lang/String;

    #calls: Lcom/isw/third/app/DotWebActivity;->DownLoadImage(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/isw/third/app/DotWebActivity;->access$2(Lcom/isw/third/app/DotWebActivity;Ljava/lang/String;)Z

    move-result v6

    .line 208
    .local v6, bDownloadFinish:Z
    iget-object v0, p0, Lcom/isw/third/app/DotWebActivity$1$1;->this$1:Lcom/isw/third/app/DotWebActivity$1;

    #getter for: Lcom/isw/third/app/DotWebActivity$1;->this$0:Lcom/isw/third/app/DotWebActivity;
    invoke-static {v0}, Lcom/isw/third/app/DotWebActivity$1;->access$0(Lcom/isw/third/app/DotWebActivity$1;)Lcom/isw/third/app/DotWebActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/isw/third/app/DotWebActivity;->pointbean:Lcom/isw/android/corp/bean/PointBean;

    iget-object v0, v0, Lcom/isw/android/corp/bean/PointBean;->imagePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 209
    if-eqz v6, :cond_4

    .line 211
    iget-object v0, p0, Lcom/isw/third/app/DotWebActivity$1$1;->this$1:Lcom/isw/third/app/DotWebActivity$1;

    #getter for: Lcom/isw/third/app/DotWebActivity$1;->this$0:Lcom/isw/third/app/DotWebActivity;
    invoke-static {v0}, Lcom/isw/third/app/DotWebActivity$1;->access$0(Lcom/isw/third/app/DotWebActivity$1;)Lcom/isw/third/app/DotWebActivity;

    move-result-object v0

    .line 212
    const-string v1, "\u4f18\u60e0\u5238\u4e0b\u8f7d\u6210\u529f\uff0c\u8bf7\u5230\u6536\u4ef6\u7bb1\u4e2d\u67e5\u770b\u5f69\u4fe1\uff01"

    .line 210
    #calls: Lcom/isw/third/app/DotWebActivity;->ShowNotification(Landroid/content/Context;Ljava/lang/String;I)V
    invoke-static {v0, v1, v3}, Lcom/isw/third/app/DotWebActivity;->access$3(Landroid/content/Context;Ljava/lang/String;I)V

    .line 220
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/isw/third/app/DotWebActivity$1$1;->this$1:Lcom/isw/third/app/DotWebActivity$1;

    #getter for: Lcom/isw/third/app/DotWebActivity$1;->this$0:Lcom/isw/third/app/DotWebActivity;
    invoke-static {v0}, Lcom/isw/third/app/DotWebActivity$1;->access$0(Lcom/isw/third/app/DotWebActivity$1;)Lcom/isw/third/app/DotWebActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/isw/third/app/DotWebActivity;->pointbean:Lcom/isw/android/corp/bean/PointBean;

    iget-object v0, v0, Lcom/isw/android/corp/bean/PointBean;->content:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 222
    if-eqz v6, :cond_5

    .line 223
    invoke-static {}, Lcom/isw/android/corp/util/MMSUtil;->getInstence()Lcom/isw/android/corp/util/MMSUtil;

    move-result-object v0

    .line 224
    iget-object v1, p0, Lcom/isw/third/app/DotWebActivity$1$1;->this$1:Lcom/isw/third/app/DotWebActivity$1;

    #getter for: Lcom/isw/third/app/DotWebActivity$1;->this$0:Lcom/isw/third/app/DotWebActivity;
    invoke-static {v1}, Lcom/isw/third/app/DotWebActivity$1;->access$0(Lcom/isw/third/app/DotWebActivity$1;)Lcom/isw/third/app/DotWebActivity;

    move-result-object v1

    .line 225
    iget-object v2, p0, Lcom/isw/third/app/DotWebActivity$1$1;->this$1:Lcom/isw/third/app/DotWebActivity$1;

    #getter for: Lcom/isw/third/app/DotWebActivity$1;->this$0:Lcom/isw/third/app/DotWebActivity;
    invoke-static {v2}, Lcom/isw/third/app/DotWebActivity$1;->access$0(Lcom/isw/third/app/DotWebActivity$1;)Lcom/isw/third/app/DotWebActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/isw/third/app/DotWebActivity;->number:Ljava/lang/String;

    .line 226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/isw/third/app/DotWebActivity$1$1;->this$1:Lcom/isw/third/app/DotWebActivity$1;

    #getter for: Lcom/isw/third/app/DotWebActivity$1;->this$0:Lcom/isw/third/app/DotWebActivity;
    invoke-static {v4}, Lcom/isw/third/app/DotWebActivity$1;->access$0(Lcom/isw/third/app/DotWebActivity$1;)Lcom/isw/third/app/DotWebActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/isw/third/app/DotWebActivity;->sdcardDir:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/isw/third/app/DotWebActivity$1$1;->this$1:Lcom/isw/third/app/DotWebActivity$1;

    #getter for: Lcom/isw/third/app/DotWebActivity$1;->this$0:Lcom/isw/third/app/DotWebActivity;
    invoke-static {v4}, Lcom/isw/third/app/DotWebActivity$1;->access$0(Lcom/isw/third/app/DotWebActivity$1;)Lcom/isw/third/app/DotWebActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/isw/third/app/DotWebActivity;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 227
    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 226
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 228
    iget-object v4, p0, Lcom/isw/third/app/DotWebActivity$1$1;->this$1:Lcom/isw/third/app/DotWebActivity$1;

    #getter for: Lcom/isw/third/app/DotWebActivity$1;->this$0:Lcom/isw/third/app/DotWebActivity;
    invoke-static {v4}, Lcom/isw/third/app/DotWebActivity$1;->access$0(Lcom/isw/third/app/DotWebActivity$1;)Lcom/isw/third/app/DotWebActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/isw/third/app/DotWebActivity;->pointbean:Lcom/isw/android/corp/bean/PointBean;

    iget-object v4, v4, Lcom/isw/android/corp/bean/PointBean;->content:Ljava/lang/String;

    .line 229
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/isw/third/app/DotWebActivity$1$1;->this$1:Lcom/isw/third/app/DotWebActivity$1;

    #getter for: Lcom/isw/third/app/DotWebActivity$1;->this$0:Lcom/isw/third/app/DotWebActivity;
    invoke-static {v12}, Lcom/isw/third/app/DotWebActivity$1;->access$0(Lcom/isw/third/app/DotWebActivity$1;)Lcom/isw/third/app/DotWebActivity;

    move-result-object v12

    iget-object v12, v12, Lcom/isw/third/app/DotWebActivity;->id:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ".jpg"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 223
    invoke-virtual/range {v0 .. v5}, Lcom/isw/android/corp/util/MMSUtil;->insertMMS(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_2
    :goto_1
    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    .line 241
    .local v8, message:Landroid/os/Message;
    const/4 v0, 0x3

    iput v0, v8, Landroid/os/Message;->what:I

    .line 242
    iget-object v0, p0, Lcom/isw/third/app/DotWebActivity$1$1;->this$1:Lcom/isw/third/app/DotWebActivity$1;

    #getter for: Lcom/isw/third/app/DotWebActivity$1;->this$0:Lcom/isw/third/app/DotWebActivity;
    invoke-static {v0}, Lcom/isw/third/app/DotWebActivity$1;->access$0(Lcom/isw/third/app/DotWebActivity$1;)Lcom/isw/third/app/DotWebActivity;

    move-result-object v0

    #getter for: Lcom/isw/third/app/DotWebActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/isw/third/app/DotWebActivity;->access$4(Lcom/isw/third/app/DotWebActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 244
    .end local v6           #bDownloadFinish:Z
    .end local v8           #message:Landroid/os/Message;
    :cond_3
    return-void

    .line 215
    .restart local v6       #bDownloadFinish:Z
    :cond_4
    iget-object v0, p0, Lcom/isw/third/app/DotWebActivity$1$1;->this$1:Lcom/isw/third/app/DotWebActivity$1;

    #getter for: Lcom/isw/third/app/DotWebActivity$1;->this$0:Lcom/isw/third/app/DotWebActivity;
    invoke-static {v0}, Lcom/isw/third/app/DotWebActivity$1;->access$0(Lcom/isw/third/app/DotWebActivity$1;)Lcom/isw/third/app/DotWebActivity;

    move-result-object v0

    .line 216
    const-string v1, "\u60a8\u7684SD\u5361\u4e0d\u5b58\u5728\uff0c\u8bf7\u5230\u6536\u4ef6\u7bb1\u4e2d\u67e5\u770b\u4f18\u60e0\u5238\u4e0b\u8f7d\u5730\u5740\uff01"

    .line 214
    #calls: Lcom/isw/third/app/DotWebActivity;->ShowNotification(Landroid/content/Context;Ljava/lang/String;I)V
    invoke-static {v0, v1, v3}, Lcom/isw/third/app/DotWebActivity;->access$3(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 231
    :cond_5
    invoke-static {}, Lcom/isw/android/corp/util/MMSUtil;->getInstence()Lcom/isw/android/corp/util/MMSUtil;

    move-result-object v0

    .line 232
    iget-object v1, p0, Lcom/isw/third/app/DotWebActivity$1$1;->this$1:Lcom/isw/third/app/DotWebActivity$1;

    #getter for: Lcom/isw/third/app/DotWebActivity$1;->this$0:Lcom/isw/third/app/DotWebActivity;
    invoke-static {v1}, Lcom/isw/third/app/DotWebActivity$1;->access$0(Lcom/isw/third/app/DotWebActivity$1;)Lcom/isw/third/app/DotWebActivity;

    move-result-object v1

    .line 233
    iget-object v2, p0, Lcom/isw/third/app/DotWebActivity$1$1;->this$1:Lcom/isw/third/app/DotWebActivity$1;

    #getter for: Lcom/isw/third/app/DotWebActivity$1;->this$0:Lcom/isw/third/app/DotWebActivity;
    invoke-static {v2}, Lcom/isw/third/app/DotWebActivity$1;->access$0(Lcom/isw/third/app/DotWebActivity$1;)Lcom/isw/third/app/DotWebActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/isw/third/app/DotWebActivity;->number:Ljava/lang/String;

    .line 234
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/isw/third/app/DotWebActivity$1$1;->this$1:Lcom/isw/third/app/DotWebActivity$1;

    #getter for: Lcom/isw/third/app/DotWebActivity$1;->this$0:Lcom/isw/third/app/DotWebActivity;
    invoke-static {v4}, Lcom/isw/third/app/DotWebActivity$1;->access$0(Lcom/isw/third/app/DotWebActivity$1;)Lcom/isw/third/app/DotWebActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/isw/third/app/DotWebActivity;->pointbean:Lcom/isw/android/corp/bean/PointBean;

    iget-object v4, v4, Lcom/isw/android/corp/bean/PointBean;->content:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 236
    const-string v4, "\u4f18\u60e0\u5238\u4e0b\u8f7d\u5730\u5740\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 237
    iget-object v4, p0, Lcom/isw/third/app/DotWebActivity$1$1;->this$1:Lcom/isw/third/app/DotWebActivity$1;

    #getter for: Lcom/isw/third/app/DotWebActivity$1;->this$0:Lcom/isw/third/app/DotWebActivity;
    invoke-static {v4}, Lcom/isw/third/app/DotWebActivity$1;->access$0(Lcom/isw/third/app/DotWebActivity$1;)Lcom/isw/third/app/DotWebActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/isw/third/app/DotWebActivity;->pointbean:Lcom/isw/android/corp/bean/PointBean;

    iget-object v4, v4, Lcom/isw/android/corp/bean/PointBean;->imagePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 234
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 231
    invoke-virtual {v0, v1, v2, v3}, Lcom/isw/android/corp/util/MMSUtil;->writeSMS(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
