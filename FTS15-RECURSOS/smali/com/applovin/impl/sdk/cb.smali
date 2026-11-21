.class Lcom/applovin/impl/sdk/cb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/impl/sdk/o;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/ca;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/ca;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/cb;->a:Lcom/applovin/impl/sdk/ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/cb;->a:Lcom/applovin/impl/sdk/ca;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/impl/sdk/ca;I)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/cb;->a:Lcom/applovin/impl/sdk/ca;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/impl/sdk/ca;Lorg/json/JSONObject;)V

    return-void
.end method
