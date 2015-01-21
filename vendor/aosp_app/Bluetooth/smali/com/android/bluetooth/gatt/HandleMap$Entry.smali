.class Lcom/android/bluetooth/gatt/HandleMap$Entry;
.super Ljava/lang/Object;
.source "HandleMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/HandleMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Entry"
.end annotation


# instance fields
.field charHandle:I

.field handle:I

.field instance:I

.field serverIf:I

.field serviceHandle:I

.field serviceType:I

.field started:Z

.field final synthetic this$0:Lcom/android/bluetooth/gatt/HandleMap;

.field type:I

.field uuid:Ljava/util/UUID;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/gatt/HandleMap;IIILjava/util/UUID;I)V
    .locals 2
    .parameter
    .parameter "serverIf"
    .parameter "type"
    .parameter "handle"
    .parameter "uuid"
    .parameter "serviceHandle"

    .prologue
    const/4 v1, 0x0

    .line 55
    iput-object p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->this$0:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    .line 37
    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    .line 38
    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    .line 40
    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    .line 41
    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceType:I

    .line 42
    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceHandle:I

    .line 43
    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->charHandle:I

    .line 44
    iput-boolean v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->started:Z

    .line 56
    iput p2, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    .line 57
    iput p3, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    .line 58
    iput p4, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    .line 59
    iput-object p5, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    .line 60
    iget v0, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    iput v0, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    .line 61
    iput p6, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceHandle:I

    .line 62
    return-void
.end method

.method constructor <init>(Lcom/android/bluetooth/gatt/HandleMap;IIILjava/util/UUID;II)V
    .locals 2
    .parameter
    .parameter "serverIf"
    .parameter "type"
    .parameter "handle"
    .parameter "uuid"
    .parameter "serviceHandle"
    .parameter "charHandle"

    .prologue
    const/4 v1, 0x0

    .line 64
    iput-object p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->this$0:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    .line 37
    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    .line 38
    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    .line 40
    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    .line 41
    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceType:I

    .line 42
    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceHandle:I

    .line 43
    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->charHandle:I

    .line 44
    iput-boolean v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->started:Z

    .line 65
    iput p2, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    .line 66
    iput p3, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    .line 67
    iput p4, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    .line 68
    iput-object p5, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    .line 69
    iget v0, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    iput v0, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    .line 70
    iput p6, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceHandle:I

    .line 71
    iput p7, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->charHandle:I

    .line 72
    return-void
.end method

.method constructor <init>(Lcom/android/bluetooth/gatt/HandleMap;IILjava/util/UUID;II)V
    .locals 2
    .parameter
    .parameter "serverIf"
    .parameter "handle"
    .parameter "uuid"
    .parameter "serviceType"
    .parameter "instance"

    .prologue
    const/4 v1, 0x0

    .line 46
    iput-object p1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->this$0:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    .line 37
    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    .line 38
    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    .line 40
    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    .line 41
    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceType:I

    .line 42
    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceHandle:I

    .line 43
    iput v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->charHandle:I

    .line 44
    iput-boolean v1, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->started:Z

    .line 47
    iput p2, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    .line 49
    iput p3, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    .line 50
    iput-object p4, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    .line 51
    iput p6, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    .line 52
    iput p5, p0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceType:I

    .line 53
    return-void
.end method
