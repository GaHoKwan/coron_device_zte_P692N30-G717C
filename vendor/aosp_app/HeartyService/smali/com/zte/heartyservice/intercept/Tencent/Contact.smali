.class public Lcom/zte/heartyservice/intercept/Tencent/Contact;
.super Ltmsdk/common/module/aresengine/ContactEntity;
.source "Contact.java"


# static fields
.field public static final COLUMN_ID:Ljava/lang/String; = "id"

.field public static final COLUMN_NAME:Ljava/lang/String; = "name"

.field public static final COLUMN_NUMBER:Ljava/lang/String; = "number"

.field public static final COLUMN_RING_STATUS:Ljava/lang/String; = "ringStatus"

.field public static final COLUMN_SMS_STATUS:Ljava/lang/String; = "SMStatus"

.field public static final COLUMN_TYPE:Ljava/lang/String; = "type"


# instance fields
.field public tag:Ljava/lang/Object;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ltmsdk/common/module/aresengine/ContactEntity;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "name"
    .parameter "number"
    .parameter "type"

    .prologue
    .line 35
    invoke-direct {p0}, Ltmsdk/common/module/aresengine/ContactEntity;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->name:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    .line 38
    iput p3, p0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->type:I

    .line 39
    return-void
.end method

.method public constructor <init>(Ltmsdk/common/module/aresengine/ContactEntity;)V
    .locals 0
    .parameter "other"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Ltmsdk/common/module/aresengine/ContactEntity;-><init>(Ltmsdk/common/module/aresengine/ContactEntity;)V

    .line 33
    return-void
.end method


# virtual methods
.method public clone()Lcom/zte/heartyservice/intercept/Tencent/Contact;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;

    invoke-direct {v0}, Lcom/zte/heartyservice/intercept/Tencent/Contact;-><init>()V

    .line 43
    .local v0, other:Lcom/zte/heartyservice/intercept/Tencent/Contact;
    iget v1, p0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->id:I

    iput v1, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->id:I

    .line 44
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->name:Ljava/lang/String;

    .line 45
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    iput-object v1, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    .line 46
    iget v1, p0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->type:I

    iput v1, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->type:I

    .line 47
    iget-boolean v1, p0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->enableForCalling:Z

    iput-boolean v1, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->enableForCalling:Z

    .line 48
    iget-boolean v1, p0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->enableForSMS:Z

    iput-boolean v1, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->enableForSMS:Z

    .line 49
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->tag:Ljava/lang/Object;

    iput-object v1, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->tag:Ljava/lang/Object;

    .line 50
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/zte/heartyservice/intercept/Tencent/Contact;->clone()Lcom/zte/heartyservice/intercept/Tencent/Contact;

    move-result-object v0

    return-object v0
.end method
