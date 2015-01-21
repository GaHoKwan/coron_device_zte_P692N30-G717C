.class public final Ltmsdkobf/dr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public jO:I

.field public ka:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ltmsdkobf/dq;",
            ">;"
        }
    .end annotation
.end field

.field public kb:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Ltmsdkobf/dr;
    .locals 11
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v8, Ltmsdkobf/dr;

    invoke-direct {v8}, Ltmsdkobf/dr;-><init>()V

    .line 72
    .local v8, list:Ltmsdkobf/dr;
    const-string v9, "batch"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Ltmsdkobf/dr;->jO:I

    .line 73
    const-string v9, "operator"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Ltmsdkobf/dr;->kb:I

    .line 74
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    iput-object v9, v8, Ltmsdkobf/dr;->ka:Ljava/util/LinkedList;

    .line 76
    const-string v9, "dns"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 77
    .local v1, dnsArray:Lorg/json/JSONArray;
    if-nez v1, :cond_1

    .line 103
    :cond_0
    return-object v8

    .line 81
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 82
    .local v2, dsnCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 83
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 84
    .local v0, dns:Lorg/json/JSONObject;
    if-eqz v0, :cond_3

    .line 85
    new-instance v6, Ltmsdkobf/dq;

    invoke-direct {v6}, Ltmsdkobf/dq;-><init>()V

    .line 89
    .local v6, iplist:Ltmsdkobf/dq;
    const-string v9, "dnsname"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Ltmsdkobf/dq;->jP:Ljava/lang/String;

    .line 90
    const-string v9, "used_ip"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, v6, Ltmsdkobf/dq;->a:Z

    .line 91
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    iput-object v9, v6, Ltmsdkobf/dq;->ka:Ljava/util/LinkedList;

    .line 93
    const-string v9, "ips"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 94
    .local v4, ipArray:Lorg/json/JSONArray;
    if-eqz v4, :cond_2

    .line 95
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 96
    .local v5, ipCount:I
    const/4 v7, 0x0

    .local v7, j:I
    :goto_1
    if-lt v7, v5, :cond_4

    .line 101
    .end local v5           #ipCount:I
    .end local v7           #j:I
    :cond_2
    iget-object v9, v8, Ltmsdkobf/dr;->ka:Ljava/util/LinkedList;

    invoke-virtual {v9, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 82
    .end local v4           #ipArray:Lorg/json/JSONArray;
    .end local v6           #iplist:Ltmsdkobf/dq;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 97
    .restart local v4       #ipArray:Lorg/json/JSONArray;
    .restart local v5       #ipCount:I
    .restart local v6       #iplist:Ltmsdkobf/dq;
    .restart local v7       #j:I
    :cond_4
    iget-object v9, v6, Ltmsdkobf/dq;->ka:Ljava/util/LinkedList;

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 96
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method
