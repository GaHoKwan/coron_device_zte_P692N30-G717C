.class public Lzte/com/cn/cloudnotepad/utils/ControlsUtils;
.super Ljava/lang/Object;
.source "ControlsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;,
        Lzte/com/cn/cloudnotepad/utils/ControlsUtils$NoteJsonObject;
    }
.end annotation


# static fields
.field public static final DOODLE:Ljava/lang/String; = "doodle"

.field public static final HANDWRITE:Ljava/lang/String; = "handwrite"

.field public static final OTHER:Ljava/lang/String; = "other"

.field public static final PICTURE:Ljava/lang/String; = "picture"

.field public static final RECORD:Ljava/lang/String; = "record"

.field public static final TEXT:Ljava/lang/String; = "text"

.field public static final VIDEO:Ljava/lang/String; = "video"


# instance fields
.field private mControlObjectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lzte/com/cn/cloudnotepad/utils/ControlsUtils$NoteJsonObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->mControlObjectList:Ljava/util/ArrayList;

    .line 30
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->mControlObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 31
    return-void
.end method

.method private getNoteJsonObject(Lorg/json/JSONObject;)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$NoteJsonObject;
    .locals 3
    .parameter "obj"

    .prologue
    .line 140
    :try_start_0
    new-instance v1, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$NoteJsonObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$NoteJsonObject;-><init>(Lzte/com/cn/cloudnotepad/utils/ControlsUtils;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    return-object v1

    .line 141
    :catch_0
    move-exception v0

    .line 143
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 144
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private newJSON(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$NoteJsonObject;
    .locals 5
    .parameter "controlData"

    .prologue
    .line 72
    new-instance v1, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$NoteJsonObject;

    invoke-direct {v1, p0}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$NoteJsonObject;-><init>(Lzte/com/cn/cloudnotepad/utils/ControlsUtils;)V

    .line 75
    .local v1, jsonObject:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$NoteJsonObject;
    :try_start_0
    const-string v2, "type"

    iget-object v3, p1, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$NoteJsonObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "content"

    iget-object v4, p1, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->content:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "name"

    iget-object v4, p1, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "size"

    iget-object v4, p1, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->size:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "time"

    iget-object v4, p1, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->time:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-object v1

    .line 76
    :catch_0
    move-exception v0

    .line 79
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private pairString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .local v0, sb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private parseJSON(Ljava/lang/String;)V
    .locals 6
    .parameter "controls"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 62
    .local v0, array:Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 63
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 69
    return-void

    .line 64
    :cond_0
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 66
    .local v3, object:Lorg/json/JSONObject;
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->mControlObjectList:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getNoteJsonObject(Lorg/json/JSONObject;)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$NoteJsonObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static setControlData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;
    .locals 1
    .parameter "type"
    .parameter "content"
    .parameter "name"
    .parameter "size"
    .parameter "time"

    .prologue
    .line 40
    new-instance v0, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    invoke-direct {v0}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;-><init>()V

    .line 41
    .local v0, controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;
    iput-object p0, v0, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->type:Ljava/lang/String;

    .line 42
    iput-object p1, v0, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->content:Ljava/lang/String;

    .line 43
    iput-object p2, v0, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->name:Ljava/lang/String;

    .line 44
    iput-object p3, v0, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->size:Ljava/lang/String;

    .line 45
    iput-object p4, v0, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->time:Ljava/lang/String;

    .line 47
    return-object v0
.end method


# virtual methods
.method public deleteControl(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 106
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->mControlObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 107
    return-void
.end method

.method public formatControlDataJSonObject2String(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const-string v1, "type"

    const-string v2, "type"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->pairString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const-string v1, "content"

    const-string v2, "content"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->pairString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string v1, "name"

    const-string v2, "name"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->pairString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string v1, "size"

    const-string v2, "size"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->pairString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    const-string v1, "time"

    const-string v2, "time"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->pairString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getControl(I)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$NoteJsonObject;
    .locals 1
    .parameter "index"

    .prologue
    .line 120
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->mControlObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$NoteJsonObject;

    return-object v0
.end method

.method public getControlData(I)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;
    .locals 4
    .parameter "index"

    .prologue
    .line 123
    new-instance v0, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    invoke-direct {v0}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;-><init>()V

    .line 124
    .local v0, controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;
    invoke-virtual {p0, p1}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControl(I)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$NoteJsonObject;

    move-result-object v2

    .line 126
    .local v2, jsonObject:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$NoteJsonObject;
    :try_start_0
    const-string v3, "content"

    invoke-virtual {v2, v3}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$NoteJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->content:Ljava/lang/String;

    .line 127
    const-string v3, "size"

    invoke-virtual {v2, v3}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$NoteJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->size:Ljava/lang/String;

    .line 128
    const-string v3, "type"

    invoke-virtual {v2, v3}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$NoteJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->type:Ljava/lang/String;

    .line 129
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$NoteJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->name:Ljava/lang/String;

    .line 130
    const-string v3, "time"

    invoke-virtual {v2, v3}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$NoteJsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->time:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    return-object v0

    .line 131
    :catch_0
    move-exception v1

    .line 133
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getControlsSize()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->mControlObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getControlsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->mControlObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insertControl(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;I)V
    .locals 2
    .parameter "controlData"
    .parameter "position"

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, jsonObject:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$NoteJsonObject;
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->newJSON(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$NoteJsonObject;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->mControlObjectList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 89
    return-void
.end method

.method public resetControls()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->mControlObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->mControlObjectList:Ljava/util/ArrayList;

    .line 37
    return-void
.end method

.method public setControl(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;I)V
    .locals 2
    .parameter "controlData"
    .parameter "position"

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, jsonObject:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$NoteJsonObject;
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->newJSON(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$NoteJsonObject;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->mControlObjectList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-void
.end method

.method public setControls(Ljava/lang/String;)V
    .locals 1
    .parameter "controls"

    .prologue
    .line 52
    :try_start_0
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->parseJSON(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 55
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public updateControl(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;I)V
    .locals 2
    .parameter "controlData"
    .parameter "position"

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, jsonObject:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$NoteJsonObject;
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->newJSON(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$NoteJsonObject;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->mControlObjectList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-void
.end method
