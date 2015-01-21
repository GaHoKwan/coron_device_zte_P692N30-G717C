.class Lcom/android/contacts/calllog/CallLogAdapter$NumberLocationInfo;
.super Ljava/lang/Object;
.source "CallLogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/calllog/CallLogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NumberLocationInfo"
.end annotation


# instance fields
.field private areaCode:Ljava/lang/String;

.field private cardType:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private detail:Ljava/lang/String;

.field private number:Ljava/lang/String;

.field private prefix:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/contacts/calllog/CallLogAdapter;


# direct methods
.method public constructor <init>(Lcom/android/contacts/calllog/CallLogAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "number"
    .parameter "city"
    .parameter "detail"
    .parameter "prefix"
    .parameter "areaCode"
    .parameter "cardType"

    .prologue
    .line 1322
    iput-object p1, p0, Lcom/android/contacts/calllog/CallLogAdapter$NumberLocationInfo;->this$0:Lcom/android/contacts/calllog/CallLogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1323
    iput-object p2, p0, Lcom/android/contacts/calllog/CallLogAdapter$NumberLocationInfo;->number:Ljava/lang/String;

    .line 1324
    iput-object p3, p0, Lcom/android/contacts/calllog/CallLogAdapter$NumberLocationInfo;->city:Ljava/lang/String;

    .line 1325
    iput-object p4, p0, Lcom/android/contacts/calllog/CallLogAdapter$NumberLocationInfo;->detail:Ljava/lang/String;

    .line 1326
    iput-object p5, p0, Lcom/android/contacts/calllog/CallLogAdapter$NumberLocationInfo;->prefix:Ljava/lang/String;

    .line 1327
    iput-object p6, p0, Lcom/android/contacts/calllog/CallLogAdapter$NumberLocationInfo;->areaCode:Ljava/lang/String;

    .line 1328
    iput-object p7, p0, Lcom/android/contacts/calllog/CallLogAdapter$NumberLocationInfo;->cardType:Ljava/lang/String;

    .line 1329
    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/calllog/CallLogAdapter$NumberLocationInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter$NumberLocationInfo;->city:Ljava/lang/String;

    return-object v0
.end method
