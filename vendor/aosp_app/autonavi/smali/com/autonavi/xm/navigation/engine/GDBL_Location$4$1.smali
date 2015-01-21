.class Lcom/autonavi/xm/navigation/engine/GDBL_Location$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/autonavi/xm/navigation/engine/GDBL_Location$4;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navigation/engine/GDBL_Location$4;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location$4$1;->this$1:Lcom/autonavi/xm/navigation/engine/GDBL_Location$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location$4$1;->this$1:Lcom/autonavi/xm/navigation/engine/GDBL_Location$4;

    iget-object v0, v0, Lcom/autonavi/xm/navigation/engine/GDBL_Location$4;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Location;

    #calls: Lcom/autonavi/xm/navigation/engine/GDBL_Location;->updateLocationInfo()V
    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->access$800(Lcom/autonavi/xm/navigation/engine/GDBL_Location;)V

    return-void
.end method
