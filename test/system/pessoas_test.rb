require "application_system_test_case"

class PessoasTest < ApplicationSystemTestCase
  setup do
    @pessoa = pessoas(:one)
  end

  test "visiting the index" do
    visit pessoas_url
    assert_selector "h1", text: "Pessoas"
  end

  test "Crie seu formulário" do
    visit pessoas_url
    click_on "Novo formulário"

    fill_in "CPF", with: @pessoa.CPF
    fill_in "Cidade", with: @pessoa.Cidade
    fill_in "E-mail", with: @pessoa.Email
    fill_in "Endereco", with: @pessoa.Endereco
    fill_in "Estado", with: @pessoa.Estado
    fill_in "Nome", with: @pessoa.Nome
    fill_in "Telefone", with: @pessoa.Telefone
    fill_in "Data de nascimento", with: @pessoa.data_de_nascimento
    fill_in "Gênero", with: @pessoa.genero
    click_on "Cadastrar"

    assert_text "Formulário preenchido com sucesso"
    click_on "Voltar"
  end

  test "Atualizar o formulário" do
    visit pessoas_url
    click_on "Editar", match: :first

    fill_in "CPF", with: @pessoa.CPF
    fill_in "Cidade", with: @pessoa.Cidade
    fill_in "E-mail", with: @pessoa.Email
    fill_in "Endereco", with: @pessoa.Endereco
    fill_in "Estado", with: @pessoa.Estado
    fill_in "Nome", with: @pessoa.Nome
    fill_in "Telefone", with: @pessoa.Telefone
    fill_in "Data de nascimento", with: @pessoa.data_de_nascimento
    fill_in "Gênero", with: @pessoa.genero
    click_on "Atualize suas informações"

    assert_text "Formulário atualizado com sucesso"
    click_on "Voltar"
  end

  test "Formulário excluido" do
    visit pessoas_url
    page.accept_confirm do
      click_on "Deletar", match: :first
    end

    assert_text "Formulário excluido com sucesso"
  end
end
