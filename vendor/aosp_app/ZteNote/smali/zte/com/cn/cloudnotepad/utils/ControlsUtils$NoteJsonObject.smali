.class public Lzte/com/cn/cloudnotepad/utils/ControlsUtils$NoteJsonObject;
.super Lorg/json/JSONObject;
.source "ControlsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/utils/ControlsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NoteJsonObject"
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;


# direct methods
.method public constructor <init>(Lzte/com/cn/cloudnotepad/utils/ControlsUtils;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$NoteJsonObject;->this$0:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    .line 152
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Lzte/com/cn/cloudnotepad/utils/ControlsUtils;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 158
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$NoteJsonObject;->this$0:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    .line 157
    invoke-direct {p0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 164
    :try_start_0
    const-string v2, "ControlsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "jason string = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$NoteJsonObject;->this$0:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-virtual {v2, p0}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->formatControlDataJSonObject2String(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, result:Ljava/lang/String;
    const-string v2, "ControlsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "note jason string = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v1           #result:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 170
    invoke-super {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
