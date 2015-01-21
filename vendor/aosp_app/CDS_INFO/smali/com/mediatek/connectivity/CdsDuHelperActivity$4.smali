.class Lcom/mediatek/connectivity/CdsDuHelperActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "CdsDuHelperActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/connectivity/CdsDuHelperActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/connectivity/CdsDuHelperActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/connectivity/CdsDuHelperActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/mediatek/connectivity/CdsDuHelperActivity$4;->this$0:Lcom/mediatek/connectivity/CdsDuHelperActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 174
    iget-object v12, p0, Lcom/mediatek/connectivity/CdsDuHelperActivity$4;->this$0:Lcom/mediatek/connectivity/CdsDuHelperActivity;

    #getter for: Lcom/mediatek/connectivity/CdsDuHelperActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v12}, Lcom/mediatek/connectivity/CdsDuHelperActivity;->access$100(Lcom/mediatek/connectivity/CdsDuHelperActivity;)Landroid/widget/Toast;

    move-result-object v12

    const-string v13, "Log is saved"

    invoke-virtual {v12, v13}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v12, p0, Lcom/mediatek/connectivity/CdsDuHelperActivity$4;->this$0:Lcom/mediatek/connectivity/CdsDuHelperActivity;

    #getter for: Lcom/mediatek/connectivity/CdsDuHelperActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v12}, Lcom/mediatek/connectivity/CdsDuHelperActivity;->access$100(Lcom/mediatek/connectivity/CdsDuHelperActivity;)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 176
    const-string v9, ""

    .line 177
    .local v9, name:Ljava/lang/String;
    const-string v3, ""

    .line 179
    .local v3, data:Ljava/lang/String;
    const/4 v4, 0x1

    .line 180
    .local v4, i:I
    const-string v12, "extra"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 181
    .local v6, info:Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 182
    const-string v12, ">"

    invoke-virtual {v6, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 185
    .local v11, show:[Ljava/lang/String;
    iget-object v12, p0, Lcom/mediatek/connectivity/CdsDuHelperActivity$4;->this$0:Lcom/mediatek/connectivity/CdsDuHelperActivity;

    iget-object v12, v12, Lcom/mediatek/connectivity/CdsDuHelperActivity;->mList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 187
    const-string v9, "[File Path]"

    .line 188
    const-string v3, "/data/user/duhelper_XXXXXXX_YYYYYY.log"

    .line 189
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 190
    .local v7, item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v12, "name"

    invoke-virtual {v7, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string v12, "data"

    invoke-virtual {v7, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v12, p0, Lcom/mediatek/connectivity/CdsDuHelperActivity$4;->this$0:Lcom/mediatek/connectivity/CdsDuHelperActivity;

    iget-object v12, v12, Lcom/mediatek/connectivity/CdsDuHelperActivity;->mList:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    move-object v2, v11

    .local v2, arr$:[Ljava/lang/String;
    array-length v8, v2

    .local v8, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v8, :cond_4

    aget-object v10, v2, v5

    .line 196
    .local v10, s:Ljava/lang/String;
    const-string v12, "<?"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "</"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 195
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 199
    :cond_1
    const-string v12, "/"

    const-string v13, ""

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 200
    const-string v12, "<"

    const-string v13, ""

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 201
    const-string v12, "datausage"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 202
    const-string v12, "datausage-helper version=\"1\" DateTime=\"_"

    const-string v13, ""

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 203
    const-string v9, "[DataTime]"

    .line 204
    const-string v12, "\""

    const-string v13, ""

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 215
    :cond_2
    :goto_2
    new-instance v7, Ljava/util/HashMap;

    .end local v7           #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 216
    .restart local v7       #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v12, "name"

    invoke-virtual {v7, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string v12, "data"

    invoke-virtual {v7, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v12, p0, Lcom/mediatek/connectivity/CdsDuHelperActivity$4;->this$0:Lcom/mediatek/connectivity/CdsDuHelperActivity;

    iget-object v12, v12, Lcom/mediatek/connectivity/CdsDuHelperActivity;->mList:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 206
    :cond_3
    const-string v12, "App"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 207
    const-string v12, "App"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 208
    const-string v12, "BgData"

    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, app:[Ljava/lang/String;
    const/4 v12, 0x0

    aget-object v9, v1, v12

    .line 210
    const-string v12, "unknown"

    const-string v13, "android:uid:system:0"

    invoke-virtual {v9, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 211
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Background Data"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v13, v1, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Bytes"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 212
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 221
    .end local v1           #app:[Ljava/lang/String;
    .end local v10           #s:Ljava/lang/String;
    :cond_4
    iget-object v12, p0, Lcom/mediatek/connectivity/CdsDuHelperActivity$4;->this$0:Lcom/mediatek/connectivity/CdsDuHelperActivity;

    #getter for: Lcom/mediatek/connectivity/CdsDuHelperActivity;->mAdapter:Landroid/widget/SimpleAdapter;
    invoke-static {v12}, Lcom/mediatek/connectivity/CdsDuHelperActivity;->access$200(Lcom/mediatek/connectivity/CdsDuHelperActivity;)Landroid/widget/SimpleAdapter;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 224
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v7           #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8           #len$:I
    .end local v11           #show:[Ljava/lang/String;
    :cond_5
    return-void
.end method
