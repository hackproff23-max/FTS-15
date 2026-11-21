.class Lcom/applovin/impl/sdk/bj;
.super Lcom/applovin/impl/sdk/bt;


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/applovin/impl/sdk/bi;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/bi;Ljava/lang/String;Lcom/applovin/impl/sdk/bd;Lcom/applovin/impl/sdk/AppLovinSdkImpl;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/bj;->b:Lcom/applovin/impl/sdk/bi;

    iput-object p5, p0, Lcom/applovin/impl/sdk/bj;->a:Lorg/json/JSONObject;

    invoke-direct {p0, p2, p3, p4}, Lcom/applovin/impl/sdk/bt;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/bd;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/bj;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/p;->a(ILcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    return-void
.end method

.method protected a(Lcom/applovin/impl/sdk/n;Lcom/applovin/impl/sdk/o;)V
    .locals 2

    const-string v0, "device"

    iget-object v1, p0, Lcom/applovin/impl/sdk/bj;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/bj;->a:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1, p2}, Lcom/applovin/impl/sdk/n;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/o;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/bj;->b:Lcom/applovin/impl/sdk/bi;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/bi;->a(Lorg/json/JSONObject;)V

    return-void
.end method
