.class Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;
.super Ljava/lang/Object;
.source "ServiceDeclaration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/ServiceDeclaration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Entry"
.end annotation


# instance fields
.field instance:I

.field permissions:I

.field properties:I

.field serviceHandle:I

.field serviceType:I

.field final synthetic this$0:Lcom/android/bluetooth/gatt/ServiceDeclaration;

.field type:B

.field uuid:Ljava/util/UUID;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/gatt/ServiceDeclaration;Ljava/util/UUID;I)V
    .locals 2
    .parameter
    .parameter "uuid"
    .parameter "permissions"

    .prologue
    const/4 v1, 0x0

    .line 58
    iput-object p1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->this$0:Lcom/android/bluetooth/gatt/ServiceDeclaration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-byte v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->type:B

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    .line 37
    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->instance:I

    .line 38
    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->permissions:I

    .line 39
    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->properties:I

    .line 40
    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->serviceType:I

    .line 41
    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->serviceHandle:I

    .line 59
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->type:B

    .line 60
    iput-object p2, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    .line 61
    iput p3, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->permissions:I

    .line 62
    return-void
.end method

.method constructor <init>(Lcom/android/bluetooth/gatt/ServiceDeclaration;Ljava/util/UUID;II)V
    .locals 2
    .parameter
    .parameter "uuid"
    .parameter "serviceType"
    .parameter "instance"

    .prologue
    const/4 v1, 0x0

    .line 43
    iput-object p1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->this$0:Lcom/android/bluetooth/gatt/ServiceDeclaration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-byte v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->type:B

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    .line 37
    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->instance:I

    .line 38
    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->permissions:I

    .line 39
    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->properties:I

    .line 40
    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->serviceType:I

    .line 41
    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->serviceHandle:I

    .line 44
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->type:B

    .line 45
    iput-object p2, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    .line 46
    iput p4, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->instance:I

    .line 47
    iput p3, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->serviceType:I

    .line 48
    return-void
.end method

.method constructor <init>(Lcom/android/bluetooth/gatt/ServiceDeclaration;Ljava/util/UUID;III)V
    .locals 2
    .parameter
    .parameter "uuid"
    .parameter "properties"
    .parameter "permissions"
    .parameter "instance"

    .prologue
    const/4 v1, 0x0

    .line 50
    iput-object p1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->this$0:Lcom/android/bluetooth/gatt/ServiceDeclaration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-byte v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->type:B

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    .line 37
    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->instance:I

    .line 38
    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->permissions:I

    .line 39
    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->properties:I

    .line 40
    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->serviceType:I

    .line 41
    iput v1, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->serviceHandle:I

    .line 51
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->type:B

    .line 52
    iput-object p2, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    .line 53
    iput p5, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->instance:I

    .line 54
    iput p4, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->permissions:I

    .line 55
    iput p3, p0, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->properties:I

    .line 56
    return-void
.end method
